class CreateFoods < ActiveRecord::Migration[8.1]
  def change
    create_table :foods, id: :uuid do |t|
      t.string :name

      t.timestamps
    end
  end
end
