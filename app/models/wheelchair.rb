class Wheelchair < ActiveRecord::Base
  belongs_to :order

  WHEELCHAIR_TYPE = ['Standard', 'Lightweight', 'Heavy Duty', 'Extra Heavy Duty']
  FRONT_RIGGINGS =  ['Standard Footrests', 'Elevated Legrests', 'Heavy Duty Legrests', 'Articulating Legrests']
  ARMS =            ['Desk Arms', 'Full Arms']

  def wheelchair_type
    index = wc_type.to_i
    WHEELCHAIR_TYPE[index]
  end

  def fr
    index = front_riggings.to_i
    FRONT_RIGGINGS[index]
  end

  def arms_type
    index = arms.to_i
    ARMS[index]
  end
end
