class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
    	t.string :driver_name
    	t.integer :number
    	t.integer :experience
    	t.string :licence_number
    end
  end
end
