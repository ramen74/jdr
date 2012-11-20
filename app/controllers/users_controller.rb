class UsersController < ApplicationController

load_and_authorize_resource

#User management...
#needed for an admin to administer other users

  def promote
    user = User.find(params[:id])
    user.role = 'admin'
    if user.save!
      redirect_to users_url, notice: 'User was successfully updated.' 
    else
      render action: "index"
    end
  end
  
  def index
    @users = User.all
  end

  #using remove becouse it may conflict with device
  def remove
    @user = User.find(params[:id])
    @user.destroy
    format.html { redirect_to users_url }
  end

end
