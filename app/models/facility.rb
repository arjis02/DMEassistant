class Facility < ActiveRecord::Base
	has_many :orders
	has_many :admissions
	has_many :employments

	has_many :patients, through: :orders
	has_many :professionals, through: :employments
	has_many :dmes, through: :orders
end