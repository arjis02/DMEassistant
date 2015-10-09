class Orders < ActiveRecord::Migration
  def change
  	create_table :orders do |t|
  		t.references :patient
  		t.references :professional
  		t.references :facility
  		t.references :dme
      t.string     :items
  		t.date       :date_approved
  		t.date       :date_filled

  		t.timestamps null: false
  	end
  end
end
