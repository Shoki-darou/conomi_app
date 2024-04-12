class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.integer :category_id, null: false
      t.string :choice1
      t.string :choice2
      t.string :choice3
      t.string :choice4
      t.string :choice5
      t.string :choice6
      t.string :choice7
      t.string :choice8
      t.string :choice9
      t.string :choice10
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
