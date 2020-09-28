class AddFieldsToAppointments < ActiveRecord::Migration[6.0]
  def change
    change_table :appointments do |t|
      t.string :phone
      t.string :year
      t.string :make
      t.string :model
      t.string :repair
      t.string :datetime
      t.string :ipaddress
    end
  end
end
