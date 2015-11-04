class Wheelchair < ActiveRecord::Base
	belongs_to :order

	enum wc_type:        [ :standard, :lightweight, :hd, :ex_hd ]
	enum front_riggings: [ :std_fr, :elev_lr, :hd_lr, :art_lr ]
	enum arms:           [ :desk, :full ]
end