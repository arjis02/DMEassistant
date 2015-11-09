class Facilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :name, null: false, limit: 256
      t.string :street_address, null: false, limit: 256
      t.string :city, null: false, limit: 64
      t.string :state, null: false, limit: 8
      t.string :zipcode, null: false, limit: 64
      t.string :phone_number, null: false, limit: 256
      t.string :email, null: false, limit: 128
      t.string :password_digest, null: false

      t.timestamps null: false
    end
  end
end
