class Orders < ActiveRecord::Migration
  def change
  	create_table :orders do |t|
  		t.references :patient
  		t.references :physician
  		t.references :therapist
  		t.references :facility
  		t.references :wheelchair
  		t.references :bed
  		t.references :dme
  		t.datetime   :date_approved
  		t.datetime   :date_filled

  		t.timestamps null: false
  		end
  	end
  end
end
