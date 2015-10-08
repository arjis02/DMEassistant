class Patients < ActiveRecord::Migration
  def change
  	create_table :patients do |t|
  		t.string :first_name, null: false, limit: 128
  		t.string :last_name, null: false, limit: 128
  		t.string :email, null: false, limit: 128
  		t.string :street_address, limit: 256
  		t.string :city, limit: 64
  		t.string :state, limit: 8
  		t.string :zipcode, limit: 64
  		t.string :phone_number, limit: 128
  		t.string :notes

  		t.timestamps null: false
  	end
  end
end
