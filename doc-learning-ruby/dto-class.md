```ruby
class CreateUserDTO

  include ActiveModel::Model

  attr_accessor :name, :email

  validates :name, presence: true

  validates :email, presence: true

end

```

ใช้ใน controller

```ruby

dto = CreateUserDTO.new(user_params)
def create
  user = UserService.create_user(dto.attributes)
  render json: user, status: :created
end
```
