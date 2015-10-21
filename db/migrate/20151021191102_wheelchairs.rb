class Wheelchairs < ActiveRecord::Migration
  def change
  	create_table :wheelchairs do |t|
  		t.string :type
  		t.string :front_riggings
  		t.string :arms

  		t.timestamps null: false
  	end
  end
end
