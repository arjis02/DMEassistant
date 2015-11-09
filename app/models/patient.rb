class Patient < ActiveRecord::Base
  has_many :orders
  has_many :admissions

  has_many :facilities, through: :admissions

  def active?
    discharge_date > DateTime.now
  end
end
