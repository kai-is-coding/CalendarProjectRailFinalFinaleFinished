class AddLatitudeToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :latitude, :float
  end
end
