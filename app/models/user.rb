class User < ActiveRecord::Base
	has_many :links
	has_many :review
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	#attr_accessible :email, :username
end
