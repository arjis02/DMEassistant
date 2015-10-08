class Physician < ActiveRecord::Base
	has_many :orders
	has_many :employments
	has_many :medicalrelations

	has_many :patients, through: :medicalrelations
	has_many :facilities, through: :employments
end