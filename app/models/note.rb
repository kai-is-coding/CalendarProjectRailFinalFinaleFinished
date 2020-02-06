class Note < ApplicationRecord
  belongs_to :appointment, optional:true
  has_one :users, through: :appointments
end
