class AddPhoneToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :phone, :integer
  end
end
