class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :comment
      t.references :user, index: true

      t.timestamps
    end
  end
end
