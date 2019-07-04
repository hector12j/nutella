class ProductController < ApplicationController
  
   def create
  	product = Product.new(product_params)
  	if product.save
  		return render json: product
  	else
  		return render json: product.errors
  	end
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

  def list
  	render json: Product.all()
  end

  private
  def product_params
    params.permit(:name, :price, :description, :stock, :product_category_id)
  end

end
