class AddPropertyToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :property_id, :integer
  end
end
