class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
  #limit roles for cancan... 
  #admin can do anything including making someone an author, author can edit and create content 
  ROLES = %w[admin author nobody]
  
  #This is for the ability.rb ( cancan ) to see if the user is an admin...
  def admin?
    self.role == "admin"
  end

end
