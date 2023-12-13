class Car < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :finance_fee, presence: true, numericality: { greater_than: 0 }
  validates :option_to_purchase, presence: true
  validates :total_amount_payable, presence: true
  validates :duration, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
end
