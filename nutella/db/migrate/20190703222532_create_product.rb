class CreateProduct < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
    	t.string :name
    	t.float :price
    	t.string :description
    	t.integer :stock
    	t.integer :product_category_id
    end
    add_foreign_key :products, :product_categories
  end
end
