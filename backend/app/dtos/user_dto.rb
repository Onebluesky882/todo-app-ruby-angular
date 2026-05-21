module UserDto
  class CreateUsers
    include ActiveModel::Model
    
    attr_accessor :name, :email, :job
    validates :name, presence: true
    validates :email, presence: true
    
    def attributes
      {
        name: name,
        email: email,
        job: job
      }
    end
  end
end