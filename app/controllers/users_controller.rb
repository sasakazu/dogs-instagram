class UsersController < ApplicationController

  def new
    @user = User.new
  end


  def show
    @user = User.find(params[:id])
    @dogposts = @user.dogposts(params[:id])

  end

  def edit
    @user = User.find(params[:id])

  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
          redirect_to @user
    else
      render 'edit'
    end
  end


  def create
    @user = User.new(user_params)
      if @user.save
        log_in @user
        redirect_to @user

      else
        render "new"
      end

  end





          private

            def user_params
              params.require(:user).permit(:name, :email, :profile, :icon, :password, :password_confirmation)
            end











end
