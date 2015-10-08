class MedicalRelations < ActiveRecord::Migration
  def change
  	create_table :medicalrelations do |t|
  		t.references :physician
  		t.references :therapist
  		t.references :dme 

  		t.timestamps null: false
  	end
  end
end
