class Appointment < ApplicationRecord
  geocoded_by :address
  after_validation :geocode
  has_many :notes
  belongs_to :user, optional:true
end
