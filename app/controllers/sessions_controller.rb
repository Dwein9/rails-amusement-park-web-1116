class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(name: params[:user][:name]).authenticate(params[:user][:password])
    if @user
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to signin_path
    end
  end

  # def show
  #   @user = User.find(params[:id])
  # end
  #
  # def edit
  # end
  #

end
