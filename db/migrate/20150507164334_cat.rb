class Cat < ActiveRecord::Migration
  def change
  	
  	remove_column :users, :category
  end
end
