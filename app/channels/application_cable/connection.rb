module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user
 
    def connect
      self.current_user = find_verified_user
    end
 
    private

    def session
      cookies.encrypted['_session_id'] || {}
    end

    def find_verified_user
      puts "SESSION USER ID: #{session['user_id']}"
      if verified_user = User.find_by(id: session['user_id'])
        verified_user
      else
        reject_unauthorized_connection
      end
    end
  end
end
