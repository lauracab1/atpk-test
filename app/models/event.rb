class Event < ApplicationRecord
  has_many :registrations

  validates :name, :description, :start_date, :end_date, :location, :capacity, :secret_code, presence: true
  validates :name, :secret_code, uniqueness: true
end
