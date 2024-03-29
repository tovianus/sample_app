class UsersController < ApplicationController
  def new
    @user=User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      # Handle a successful save.
      flash[:success] = "User #{@user.name} created!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def show
    @user=User.find(params[:id])
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

end
