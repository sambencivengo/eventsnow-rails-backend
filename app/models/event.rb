class Event < ApplicationRecord
  has_many :attendances, dependent: :nullify
  has_many :users, through: :attendances

  belongs_to :location

  
end
