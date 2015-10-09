class Professional < ActiveRecord::Base
	has_secure_password

	has_many :employments
	has_many :medicalrelations
	has_many :orders

	has_many :facilities, through: :employments
	has_many :patients, through: :medicalrelations
end