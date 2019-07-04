class ProductCategoryController < ApplicationController
 
  def create
  	product_category = ProductCategory.new(product_category_params)
  	if product_category.save
  		return render json: product_category
  	else
  		return render json: product_category.errors
  	end
  end

  def update
  	product_category = ProductCategory.find(params['id'])
  	if product_category.update(product_category_params)
  		return render json: product_category
  	else
  		return render json: product_category.errors
  	end
  end

  def delete
  	product_category = ProductCategory.find(params['id'])
  	if product_category.destroy
  		return render json: true
  	else
  		return render json: false
  	end
  end

  def find
  	if ProductCategory.exists?(params['id'])
  		return render json: ProductCategory.find(params['id'])
  	else
  		return render json: false
  	end
  end

  private
  def product_category_params
    params.permit(:name, :price, :description, :stock)
  end

end
