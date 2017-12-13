class AddColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :zip, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :longitude, :decimal
    add_column :users, :latitude, :decimal
  end
end
