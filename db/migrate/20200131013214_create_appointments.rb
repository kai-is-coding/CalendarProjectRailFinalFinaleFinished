class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.time :time
      t.date :date
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
