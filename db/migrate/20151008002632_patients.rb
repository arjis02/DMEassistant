class Patients < ActiveRecord::Migration
  def change
  	create_table :patients do |t|
  		t.string   :first_name, null: false, limit: 128
  		t.string   :last_name, null: false, limit: 128
  		t.string   :email, limit: 128
  		t.string   :street_address, limit: 256
  		t.string   :city, limit: 64
  		t.string   :state, limit: 8
  		t.string   :zipcode, limit: 64
  		t.string   :phone_number, limit: 128
      t.string   :height, null: false, limit: 128
      t.string   :weight, null: false, limit: 128
      t.date     :birthday
      t.date     :discharge_date
      t.string   :diagnosis
      t.string   :insurance_1
      t.string   :insurance_2
  		t.string   :notes
      t.string   :gender, limit: 8
      
  		t.timestamps null: false
  	end
  end
end
