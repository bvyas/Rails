class UserController < ApplicationController
  def index
  	@users = User.all
	
  end
	def new
		# @user = User.new( first_name: params[:first_name], last_name: params[:last_name], email_address: params[:email_address])
		# render '/user/new/'
	end

def create
    user = User.create(user_params)
    if user.errors.present?
    	render text: "There are errors" #do flash data
    else
		redirect_to'/user/index'
	end
end

def edit
    user = User.find(params[:id])
end

def update	  
    @user = User.find(params[:user_id])
    # render "user/index"
    # if user.errors.present?
    #     render text: "There are errors" #do flash data
    # else
    #     redirect_to'/user/index'
    # end
    # if @user.update_attributes(user_params)
    #     redirect_to "/user/index"
    # else
    #     render "edit"
    # end
end


def show	
    @user = User.find(params[:id])
end

def idea   
      @user = User.find(params[:user_id])
end

def destroy   
    @user = User.delete(params[:id])
    redirect_to '/'
end


private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :email_address, :password, :password_confirmation)
	end

end



