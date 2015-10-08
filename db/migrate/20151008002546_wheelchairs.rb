class Wheelchairs < ActiveRecord::Migration
  def change
  	create_table :wheelchairs do |t|
  		t.string     :type, null: false, limit: 256
  		t.string     :HCPCS_code
  		t.boolean    :leg_rests, default: false
  		t.string     :serial_number, limit: 512
  		t.references :DME
  		t.boolean    :active
  		
  		t.timestamps null: false
  	end
  end
end
