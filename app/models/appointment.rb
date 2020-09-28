class Appointment < ApplicationRecord
    has_one :rating

    validates :email, email: true, presence: true
    validates :first, :last, :make, :model, :repair, :datetime, presence: true, on: :update
    validates :phone, presence: true, on: :update
    validates :year, length: { is: 4 }, numericality: { only_integer: true }, presence: true, on: :update
    
    # Assign each appointment a random id
    before_create :randomize_id

    private
    def randomize_id
        begin
            self.id = SecureRandom.random_number(1_000_000)
        end while Appointment.where(id: self.id).exists?
    end
end
