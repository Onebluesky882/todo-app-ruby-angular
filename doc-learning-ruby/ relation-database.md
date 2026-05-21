## สร้าง model สำหรับ relation database

rails g model FoodItem name:string calories:integer user:references
rails g model Profile bio:string user:references

setup relation in model

user.rb
class User < ApplicationRecord
has_one :profile
has_many :food_items
end

profile.rb
class Profile < ApplicationRecord
belongs_to :user
end

test : rails console

```ruby
##for test : one  - one
##  สร้าง user ก่อน
user = User.create(
 name: "John",
 email: "john@gmail.com",
 job: "developer"
)
## แล้วค่อย create profile
profile = user.create_profile(
  bio: "Ruby on Rails Developer"
)


##for test : one  - many


## แล้วค่อย create food items
food_item = user.food_items.create(
  name: "Pizza",
  calories: 200
)


```

--------------------------------- MANY TO MANY
rails g model Food name:string
rails g migration CreateFoodsUsersJoinTable

STEP 3 — edit migration (IMPORTANT UUID)

```ruby
class CreateFoodsUsersJoinTable < ActiveRecord::Migration[8.1]
  def change
    create_join_table :foods, :users,
      column_options: { type: :uuid } do |t|

      t.index :food_id
      t.index :user_id
    end
  end
end
```

terminal : rails db:migrate

## setup relation

```ruby
## app/models/user.rb
class User < ApplicationRecord
  has_one :profile
  has_many :food_items

  has_and_belongs_to_many :foods
end

## app/models/food.rb
class Food < ApplicationRecord
  has_and_belongs_to_many :users
end
```

## rails console test

terminal : rails console

```ruby
## สร้าง user ก่อน
user = User.create(
  name: "John",
  email: "john@gmail.com",
  job: "developer"
)

## สร้าง food ก่อน
pizza = Food.create(name: "Pizza")

burger = Food.create(name: "Burger")

## แล้วค่อย associate
user.foods << pizza

user.foods << burger


```

## ตรวจสอบ

```ruby
# foods ของ user
user.foods

# users ของ food
pizza.users
```
