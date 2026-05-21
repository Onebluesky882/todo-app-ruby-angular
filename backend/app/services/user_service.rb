module UserService
  def self.create_user(params)
    User.create(params)
  end
  
  def self.get_all_users
    User.all
  end
  
  def self.get_user_by_id(id)
    User.find(id)
  end
  
  def self.update_user(id, params)
    User.find(id).update(params)
  end
  
  def self.delete_user(id)
    User.find(id).destroy
  end
end