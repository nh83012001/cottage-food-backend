class CreateRecipesTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes_transactions do |t|
      t.integer :recipe_id
      t.integer :transact_id
      t.integer :rating
      t.text :comments

      t.timestamps
    end
  end
end
