class Medicalrelation < ActiveRecord::Base
	belongs_to :patient
	belongs_to :physician
	belongs_to :therapist
end