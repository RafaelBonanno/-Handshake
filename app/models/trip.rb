class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :country
  validates :start_date, presence: true
  validates :end_date, presence: true, comparison: { greater_than: :start_date }
end
