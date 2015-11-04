class Wheelchairs < ActiveRecord::Migration
  def change
  	create_table :wheelchairs do |t|
  		t.integer :wc_type
  		t.integer :front_riggings
  		t.integer :arms
  		t.references :order

  		t.timestamps null: false
  	end
  end
end
