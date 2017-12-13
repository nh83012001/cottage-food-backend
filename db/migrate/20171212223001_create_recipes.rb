class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.text :name
      t.text :type
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
