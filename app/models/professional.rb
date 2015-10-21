class Professional < ActiveRecord::Base
	has_secure_password

	has_many :employments
	has_many :orders

	has_many :facilities, through: :employments

	validates :email, uniqueness: true

	scope :physician, -> { where(physician: true) }
	scope :therapist, -> { where(physician: false) }
end