class ApplicationController < ActionController::API

    def authenticate
        auth_header = request.headers["Authorization"]
        token = auth_header.split.last
        payload = JWT.decode(token, ENV['JWT_SECRET_KEY'], true, {algorithm: 'HS256'})[0]
        @current_user = User.find(payload["user_id"])
    end

end
