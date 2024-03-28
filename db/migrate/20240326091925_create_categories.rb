class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :category_name, null: false
      t.references :question
      t.timestamps, index: true, foreign_key: { to_table: :categories }
    end
  end
end
