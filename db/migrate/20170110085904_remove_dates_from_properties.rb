class RemoveDatesFromProperties < ActiveRecord::Migration[5.0]
  def change
    remove_column :properties, :availability_initial, :datetime
    remove_column :properties, :availability_final, :datetime
  end
end
