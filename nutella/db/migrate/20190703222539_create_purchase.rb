class CreatePurchase < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
    	t.date :date
    	t.float :total
    	t.integer :user_id
    	t.integer :product_id
    end
    add_foreign_key :purchases, :users
    add_foreign_key :purchases, :products
  end
end
