class AddBakerNameColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :transacts, :baker_name, :string
    add_column :transacts, :purchaser_name, :string
  end
end
