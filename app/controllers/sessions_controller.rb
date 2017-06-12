class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    # byebug
    if @user.present? && @user.authenticate(params[:password])
      flash[:notice] = 'Login successful'
      session[:user_id] = @user.id
      redirect_to home_url
    else
    flash.now[:alert] = 'try again'
    render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to home_path, notice: 'Signed Out! 🏃'
  end
  
end
