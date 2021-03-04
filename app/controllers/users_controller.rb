class UsersController < ApplicationController

    before_action :authenticate, only: [:show]


    def login
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
            token = JWT.encode({ user_id: @user.id }, ENV['JWT_SECRET_KEY'], "HS256")
            session[:user_id] = @user.id
            render json: { user: UserSerializer.new(@user), token: token}
        else
            render json: { errors: ["Invalid Email or Password"] }, status: :unauthorized
        end 
    end

    def google_login
        @user = User.find_by(google_id: params[:google_id])
        if @user
            token = JWT.encode({ user_id: @user.id }, ENV['JWT_SECRET_KEY'], "HS256")
            session[:user_id] = @user.id
            render json: { user: UserSerializer.new(@user), token: token}
        else
            render json: { errors: ["There is no profile tied to that Google account. Please sign up instead."] }, status: :unauthorized
        end 
    end


    def signup
        if params[:image]
            image = Cloudinary::Uploader.upload(params[:image])
            @user = User.create(
                email: params[:email],
                password: params[:password],
                first_name: params[:first_name].capitalize,
                last_name: params[:last_name].capitalize,
                photo_url: image["url"]
            )
        elsif params[:google_id]
            @user = User.create(
                email: params[:email],
                password: params[:password],
                first_name: params[:first_name],
                last_name: params[:last_name],
                photo_url: params[:photo_url],
                google_id: params[:google_id]
            )
        else
            @user = User.create(
                email: params[:email],
                password: params[:password],
                first_name: params[:first_name].capitalize,
                last_name: params[:last_name].capitalize,
                photo_url: "https://res.cloudinary.com/dq7q4e3tx/image/upload/v1614362624/logo_w7wvyn.jpg"
            )
        end

        if @user.valid?
            token = JWT.encode({ user_id: @user.id }, ENV['JWT_SECRET_KEY'], "HS256")
            session[:user_id] = @user.id
            render json: { user: UserSerializer.new(@user), token: token}
        else
            render json: {errors: @user.errors.full_messages}, status: :unauthorized
        end
    end

    def show
        session[:user_id] = @current_user.id
        render json: @current_user
    end

    def info
        @user = User.find(params[:id])
        render json: @user
    end

    def updatelocation
        @user = User.find(params[:id])
        @user.update(lat: params[:lat], lng: params[:lng])
        render json: @user
    end

end
