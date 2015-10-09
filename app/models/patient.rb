class Patient < ActiveRecord::Base
	has_many :orders
	has_many :admissions
	has_many :medicalrelations

	has_many :professionals, through: :medicalrelations
	has_many :dmes, through: :medicalrelations
	has_many :facilities, through: :admissions
end