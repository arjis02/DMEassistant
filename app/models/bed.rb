class Bed < ActiveRecord::Base
  belongs_to :dme

	has_many :orders
end