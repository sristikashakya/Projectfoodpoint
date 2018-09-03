class AddRolesMaskToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :roles_mask, :integer
  end
end
