class Employments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
    t.references :facility
    t.references :professional

    t.timestamps null: false
    end
  end
end
