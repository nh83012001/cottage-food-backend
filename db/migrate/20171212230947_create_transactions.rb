class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.integer :purchaser_id
      t.integer :baker_id
      t.decimal :delivery_distance
      t.decimal :purchaser_longitude
      t.decimal :purchaser_latitude
      t.date :delivery_date
      t.time :delivery_time
      t.decimal :total_cost

      t.timestamps
    end
  end
end
