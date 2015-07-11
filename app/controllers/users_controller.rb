class UsersController < ApplicationController
	before_action :authenticate_user!
	before_action :set_user, only: [:show, :update, :edit] 
  

  def show
  end

  def edit
  end

  def update 
  	if @user && @user.update(user_params)
  		@user.save
			flash[:notice] = "Profile updated"
			redirect_to :show
		else
			flash[:alert] = "There was a problem"
			render :edit
		end
  end

  private

  def user_params
  		params.require(:user).permit(:fname, :lname, :email,
  		:password, :password_comfirmation, :address, :apt,
  		:city, :zipcode, :country)
	end

	def set_user
		@user = User.find(params[:id])
	end
end
