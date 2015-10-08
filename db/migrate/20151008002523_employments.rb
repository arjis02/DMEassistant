class Employments < ActiveRecord::Migration
  def change
  	create_table :employments do |t|
  		t.references :facility
  		t.references :therapist
  		t.references :physician

  		t.timestamps null: false
  	end
  end
end
