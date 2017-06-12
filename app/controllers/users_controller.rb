class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    u = params.require(:user).permit([:first_name, :last_name, :email, :password_digest])
    @user = User.new u
    

  end
end
