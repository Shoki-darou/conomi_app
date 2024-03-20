class AddNamesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name,     :string, null: false
    add_column :users, :birthday, :date,   null: false
    add_column :users, :gender,   :string, null: false
  end
end
