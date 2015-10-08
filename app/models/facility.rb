class Facility < ActiveRecord::Base
	has_many :orders
	has_many :admissions
	has_many :employments

	has_many :patients, through: :orders
	has_many :therapists, through: :employments
	has_many :physicians, through: :employments
end