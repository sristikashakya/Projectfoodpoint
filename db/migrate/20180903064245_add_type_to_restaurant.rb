class AddTypeToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :user_type, :integer
  end
end
