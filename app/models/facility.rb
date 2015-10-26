class Facility < ActiveRecord::Base
	has_secure_password

	has_many :orders
	has_many :employments

	has_many :professionals, through: :employments
	has_many :patients, through: :admissions

	validates :email, uniqueness: true

	def employs?(professional)
		self.professionals.include?(professional)
	end
end