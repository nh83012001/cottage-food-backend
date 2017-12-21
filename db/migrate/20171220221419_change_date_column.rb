class ChangeDateColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :transacts, :delivery_date, :delivery_date_time
  end
end
