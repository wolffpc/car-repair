class AddRatingToAppointments < ActiveRecord::Migration[6.0]
  def change
    change_table :appointments do |t|
      t.string :rating
    end
  end
end
