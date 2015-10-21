class Professional < ActiveRecord::Base
	has_secure_password

	has_many :employments
	has_many :orders

	has_many :facilities, through: :employments

	validates :email, uniqueness: true

	scope :physicians, -> { where(is_physician: true) }
	scope :therapists, -> { where(is_physician: false) }
end