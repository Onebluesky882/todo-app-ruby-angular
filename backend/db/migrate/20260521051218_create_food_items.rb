class CreateFoodItems < ActiveRecord::Migration[8.1]
  def change
    create_table :food_items, id: :uuid do |t|
      t.string :name
      t.integer :calories
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
