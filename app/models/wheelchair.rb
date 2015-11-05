class Wheelchair < ActiveRecord::Base
	belongs_to :order

	WHEELCHAIR_TYPE = [ "standard", "lightweight", "hd", "ex_hd" ]
	FRONT_RIGGINGS =  [ "std_fr", "elev_lr", "hd_lr", "art_lr" ]
	ARMS =            [ "desk", "full" ]
end