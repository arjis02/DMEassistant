class Dme < ActiveRecord::Base
	has_secure_password

	has_many :beds
	has_many :orders
	has_many :medicalrelations

	has_many :patients, through: :medicalrelations
	has_many :facilities, through: :orders

	validates :email, uniqueness: true
end