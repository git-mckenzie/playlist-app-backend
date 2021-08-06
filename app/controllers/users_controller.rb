class UsersController < ApplicationController
  def create
    user = User.new(
      user_name: params[:user_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    user_id = params["id"]
    user = User.find(user_id)

    user.user_name = params["user_name"] || user.user_name
    user.email = params["email"] || user.email
    user.password = params["password"] || user.password
    user.password_confirmation = params["password_confirmation"] || user.password_confirmation

    if user.save
      render json: user
    else
      render json: { errors: user.errors.full_messages }, status: 418
    end
  end
end
