class User < ActiveRecord::Base
  has_many :posts
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :title
  
  def title
    return self.email
  end
  
  def attach_post(post)
    post.user_id = self.id
  end 
  
  
end