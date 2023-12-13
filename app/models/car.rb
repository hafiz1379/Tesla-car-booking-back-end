class Car < ApplicationRecord
  has_many :reservations

  validates :name, presence: true
  validates :description, presence: true
  validates :finance_fee, presence: true
  validates :option_to_purchase, presence: true
  validates :total_amount_payable, presence: true
  validates :duration, presence: true, numericality: { only_integer: true }
end
