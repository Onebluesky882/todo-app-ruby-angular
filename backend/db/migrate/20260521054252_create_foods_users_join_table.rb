class CreateFoodsUsersJoinTable < ActiveRecord::Migration[8.1]
  def change
    create_join_table :foods, :users,
      column_options: { type: :uuid } do |t|

      t.index :food_id
      t.index :user_id
    end
  end
end