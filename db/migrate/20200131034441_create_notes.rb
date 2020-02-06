class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.integer :appointment_id
      t.text :message

      t.timestamps
    end
  end
end
