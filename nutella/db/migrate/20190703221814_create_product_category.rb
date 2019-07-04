class CreateProductCategory < ActiveRecord::Migration[5.2]
  def change
    create_table :product_categories do |t|
    	t.string :name
    	t.string :description
    end
  end
end
