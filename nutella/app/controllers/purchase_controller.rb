class PurchaseController < ApplicationController
  def create
  	if User.exists?(username: params['username'])
	  	user = User.find_by(username: params['username'])
	  	if user.password === params['password']
		  	product = Product.find(params['product_id'])
	  		purchase = Purchase.new(date: DateTime.now.to_formatted_s(:db), total: product.price, user_id: user.id, product_id: product.id)
		  	if purchase.save
		  		return render json: purchase
		  	else
		  		return render json: purchase.errors
		  	end
	  	end
	else
		return  render json: false
  	end
 	# render json:   
  end

  def update
  	product = Product.find(params['id'])
  	if product.update(product_params)
  		return render json: product
  	else
  		return render json: product.errors
  	end
  end

  def delete
  	product = Product.find(params['id'])
  	if product.destroy
  		return render json: true
  	else
  		return render json: false
  	end
  end

  def find
  	if Product.exists?(params['id'])
  		return render json: Product.find(params['id'])
  	else
  		return render json: false
  	end
  end

  private
  def user_params
    params.permit(:date, :total, :user_id, :product_id)
  end

end
