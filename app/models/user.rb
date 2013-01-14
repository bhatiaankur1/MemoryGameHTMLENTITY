class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :Names
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :Roles, :Names
  # attr_accessible :title, :body
  def returnuser_score(level)
  	if level == "1"
  		return self.LowestClicksL1
  	elsif level == "2"
  		return self.LowestClicksL2
  	elsif level == "3"
  		return self.LowestClicksL3
  	elsif level == "4"
  		return self.LowestClicksL4
  	else
  		return ""
  	end		
  end
end
