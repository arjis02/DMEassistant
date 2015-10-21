class Beds < ActiveRecord::Migration
  def change
  	create_table :beds do |t|
  		t.string :bed_type
  		t.string :rails

  		t.timestamps null: false
  	end
  end
end
