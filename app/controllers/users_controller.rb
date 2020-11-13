class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)


    saved = @user.save
    puts "Saved = #{saved}"

    if saved
      redirect_to new_user_path
    else
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
