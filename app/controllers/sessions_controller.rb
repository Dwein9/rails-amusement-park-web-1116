class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
<<<<<<< HEAD
    # binding.pry
    if @user = User.find_by(name: params[:user][:name]).authenticate(params[:user][:password])
=======
    @user = User.find_by(name: params[:user][:name]).authenticate(params[:user][:password])
    if @user
>>>>>>> 6e3c0e0cb29e73904f7f838539e74bfd445e362a
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to signin_path
    end
  end

<<<<<<< HEAD
  def destroy
    session.clear
    redirect_to '/'
  end

=======
  # def show
  #   @user = User.find(params[:id])
  # end
  #
  # def edit
  # end
  #
>>>>>>> 6e3c0e0cb29e73904f7f838539e74bfd445e362a

end
