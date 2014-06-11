class User < ActiveRecord::Base
  
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	
  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :logo, :password, :password_confirmation, :remember_me, :business
  validates_presence_of :name
  has_many :user_details, dependent: :destroy
  
 
end
