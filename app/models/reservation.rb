class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :car
    validates :test_date, :city, presence: true
    
end
