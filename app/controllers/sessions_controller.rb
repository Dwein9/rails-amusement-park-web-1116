class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    # binding.pry
    if @user = User.find_by(name: params[:user][:name]).authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to signin_path
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end
end
