module ApplicationCable
  
  class Connection < ActionCable::Connection::Base
    identified_by :current_user
 
    def connect
      self.current_user = find_verified_user
    end
 
    private

    def find_verified_user
      token = request.params[:token]
      payload = JWT.decode(token, ENV['JWT_SECRET_KEY'], true, {algorithm: 'HS256'})[0]
      
      if verified_user = User.find(payload["user_id"])
        verified_user
      else
        reject_unauthorized_connection
      end
    end

  end

end
