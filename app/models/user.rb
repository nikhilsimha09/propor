class User < ActiveRecord::Base

	has_many :permissions
	has_many :roles, through: :permissions

	has_one :userdetail
	has_many :tasks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         def role?(role)
         	self.roles.pluck(:name).include? role
         end
end

