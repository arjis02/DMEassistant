class Admission < ActiveRecord::Base
  belongs_to :facility
  belongs_to :patient
end
