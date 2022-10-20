class CreateUserTrasactions < ActiveRecord::Migration[7.0]
  def change
    create_table :user_trasactions do |t|
      t.string :name, null: false
      t.string :photo, null: false
      t.text :description, null: false
      t.float :payment, null: false, default: 0
      
      t.references :category, null: false, foreign_key: { to_table: 'categories' }

      t.timestamps
    end
  end
end
