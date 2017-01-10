class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.float :cost
      t.float :lat
      t.float :lng
      t.float :area
      t.string :location
      t.boolean :kitchen
      t.integer :beds
      t.boolean :wifi
      t.datetime :availability_initial
      t.datetime :availability_final

      t.timestamps
    end
  end
end
