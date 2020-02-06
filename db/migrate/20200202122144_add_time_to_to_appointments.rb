class AddTimeToToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :timeTo, :time
  end
end
