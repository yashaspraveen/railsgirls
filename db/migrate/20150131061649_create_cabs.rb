class CreateCabs < ActiveRecord::Migration
  def change
    create_table :cabs do |t|
      t.string :cab_type
      t.string :cab_no
      t.integer :rate
      t.boolean :insured

      t.timestamps null: false
    end
  end
end
