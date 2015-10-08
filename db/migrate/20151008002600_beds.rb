class Beds < ActiveRecord::Migration
  def change
  	create_table :beds do |t|
  		t.string     :type, null: false, limit: 256
  		t.string     :HCPCS_code
  		t.string     :rail_type
  		t.string     :serial_number
  		t.references :dme
  		t.boolean    :active

  		t.timestamps null: false
  	end
  end
end
