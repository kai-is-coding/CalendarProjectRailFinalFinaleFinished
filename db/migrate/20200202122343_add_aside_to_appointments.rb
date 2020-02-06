class AddAsideToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :aside, :string
  end
end
