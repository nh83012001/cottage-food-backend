class AddQuantityColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes_transactions, :quantity, :integer
  end
end
