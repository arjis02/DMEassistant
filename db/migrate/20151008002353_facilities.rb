class Facilities < ActiveRecord::Migration
  def change
  	create_table :facilities do |t|
			t.string :name, null: false, limit: 256
			t.string :street_address, limit: 256
			t.string :city, limit: 64
			t.string :state, limit: 8
			t.string :zipcode, limit: 64

			t.timestamps null: false
  	end
  end
end
