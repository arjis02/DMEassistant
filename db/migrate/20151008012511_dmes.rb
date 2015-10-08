class Dmes < ActiveRecord::Migration
  def change
  	create_table :dmes do |t|
  		t.string :name, null: false, limit: 256
      t.string :email, null: false, limit: 128
  		t.string :street_address, limit: 256
  		t.string :city, limit: 64
  		t.string :state, limit: 8
  		t.string :zipcode, limit: 64
  		t.string :insurances
      t.string :password_digest, null: false

  		t.timestamps null: false
  	end
  end
end
