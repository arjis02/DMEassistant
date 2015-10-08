class Patient < ActiveRecord::Base
	has_many :orders
	has_many :admissions
	has_many :medicalrelations

	has_many :physicians, through: :medicalrelations
	has_many :therapists, through: :medicalrelations
	has_many :facilities, through: :admissions
end