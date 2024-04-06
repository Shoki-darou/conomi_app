class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :category_name
    add_reference :categories, :question, null: false, foreign_key: true
    add_index :categories, :question_id
  end
end
