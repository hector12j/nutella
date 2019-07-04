Rails.application.routes.draw do
  post 'product_category/create'
  post 'product_category/update'
  post 'product_category/delete'
  post 'product_category/find'
  post 'product/create'
  post 'product/update'
  post 'product/delete'
  post 'product/find'
  get 'product/list'
  post 'user/create'
  post 'user/update'
  post 'user/delete'
  post 'user/find'
  post 'purchase/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
