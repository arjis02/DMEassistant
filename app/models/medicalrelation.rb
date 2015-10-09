class Medicalrelation < ActiveRecord::Base
	belongs_to :patient
	belongs_to :professional
	belongs_to :dme
end