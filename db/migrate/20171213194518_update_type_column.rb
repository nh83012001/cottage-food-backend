class UpdateTypeColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :recipes, :type, :course_type
  end
end
