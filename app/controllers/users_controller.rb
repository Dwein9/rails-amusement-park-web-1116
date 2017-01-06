class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
<<<<<<< HEAD
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to signup_path
    end
  end

  def show
    authenticate_user
    @user = User.find(params[:id])
  end

  def update
    @attraction = Attraction.find(params[:id])
    current_user
    @ride = Ride.new(user_id: @user.id, attraction_id: @attraction.id)

    flash[:notice] = @ride.take_ride

    redirect_to user_path(@user)
=======
    @user.save
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
>>>>>>> 6e3c0e0cb29e73904f7f838539e74bfd445e362a
  end


  private
<<<<<<< HEAD

  def user_params
    params.require(:user).permit(:name, :height, :happiness, :nausea, :admin, :tickets, :password)
  end
=======
  def user_params
    params.require(:user).permit(:name, :password, :happiness, :nausea, :tickets, :height, :admin)
  end

>>>>>>> 6e3c0e0cb29e73904f7f838539e74bfd445e362a
end
