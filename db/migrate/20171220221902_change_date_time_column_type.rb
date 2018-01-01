class ChangeDateTimeColumnType < ActiveRecord::Migration[5.1]
  def change
    change_column :transacts, :delivery_date_time, :datetime
  end
end
