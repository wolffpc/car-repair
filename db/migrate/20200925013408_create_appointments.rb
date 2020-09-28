class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :email
      t.string :first
      t.string :last

      t.timestamps
    end
  end
end
