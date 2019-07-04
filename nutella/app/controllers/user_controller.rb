class UserController < ApplicationController
  def create
  	user = User.new(user_params)
  	if user.save
  		return render json: user
  	else
  		return render json: user.errors
  	end
  end

  def update
  	user = User.find(params['id'])
  	if user.update(user_params)
  		return render json: user
  	else
  		return render json: user.errors
  	end
  end

  def delete
  	user = User.find(params['id'])
  	if user.destroy
  		return render json: true
  	else
  		return render json: false
  	end
  end

  def find
  	if User.exists?(params['id'])
  		return render json: User.find(params['id'])
  	else
  		return render json: false
  	end
  end

  private
  def user_params
    params.permit(:name, :username, :password, :last_name)
  end

end
