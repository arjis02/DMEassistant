class Wheelchairs < ActiveRecord::Migration
  def change
  	create_table :wheelchairs do |t|
  		t.string :wc_type
  		t.string :front_riggings
  		t.string :arms
  		t.references :order

  		t.timestamps null: false
  	end
  end
end
