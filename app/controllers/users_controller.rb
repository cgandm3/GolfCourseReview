class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def new
    @users = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new 
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
      redirect_to users_path
  end

  def update
  end

  private

    def user_params
      params.require(:user).permit(:name, :email)
    end
    
end



