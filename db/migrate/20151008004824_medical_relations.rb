class MedicalRelations < ActiveRecord::Migration
  def change
  	create_table :medicalrelations do |t|
  		t.references :professional
  		t.references :dme 
  		t.references :patient

  		t.timestamps null: false
  	end
  end
end
