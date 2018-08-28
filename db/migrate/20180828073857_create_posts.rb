class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :restaurant_id
      t.string :photo
      t.text :description
      t.timestamps null: false
    end
    add_index :posts, :restaurant_id
  end
end
