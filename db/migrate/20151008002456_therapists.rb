class Therapists < ActiveRecord::Migration
  def change
  	create_table :therapists do |t|
  		t.string :first_name, null: false, limit: 128
  		t.string :last_name, null: false, limit: 128
  		t.string :email, null: false, limit: 128
  		t.string :type, limit: 128
  		t.string :license_number, limit: 256
  		t.string :registered_state, limit: 64
  		t.string :phone_number, limit: 128

  		t.timestamps null: false
  	end
  end
end
