class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.string :rating
      t.references :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
