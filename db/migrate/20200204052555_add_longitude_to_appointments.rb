class AddLongitudeToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :longitude, :float
  end
end
