class AddCategoryToProducts < ActiveRecord::Migration
  def change
  	add_column :users, :category, :string
  end
end
