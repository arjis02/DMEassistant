class Orders < ActiveRecord::Migration
  def change
  	create_table :orders do |t|
      t.string     :items
      t.boolean    :is_approved
  		t.date       :date_approved
      t.boolean    :is_delivered
  		t.date       :date_delivered
      t.references :professional
      t.references :patient
      t.references :facility
      t.references :provider

  		t.timestamps null: false
  	end
  end
end
