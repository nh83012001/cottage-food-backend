class DropDeliveryTimeColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :transacts, :delivery_time
  end
end
