class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.text :first
      t.text :second
      t.text :considerations
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :ingredients, :users
    add_index :ingredients, [:user_id, :created_at]
  end
end
