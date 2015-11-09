class Admissions < ActiveRecord::Migration
  def change
    create_table :admissions do |t|
    t.references :facility
    t.references :patient

    t.timestamps null: false
    end
  end
end
