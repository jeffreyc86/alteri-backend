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


end
