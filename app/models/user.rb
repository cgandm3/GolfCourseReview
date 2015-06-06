class User < ActiveRecord::Base
	has_many :reviews
	has_many :golfcourses, through: :reviews
	has_secure_password
	# validates :name, presence: true
 #    validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
 #    validates :password, presence: true, confirmation: true, length: { in: 6..20 }
end

  