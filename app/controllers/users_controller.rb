class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    u = params.require(:user).permit([:first_name, :last_name, :email, :password])
    @user = User.new u
    if @user.save
      redirect_to home_path
      flash[:notice] = 'new user created'
    else
      flash[:alert] = 'failed'
      render :new
    end

    def edit
      @user = User.find params[:id]
    end

    def update
      u = params.require(:user).permit([:first_name, :last_name, :email, :password])
      @user.update u
      redirect_to home_path
      flash[:notice] = 'User updated'
    end
    
  end


end
