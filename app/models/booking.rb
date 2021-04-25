class Booking < ApplicationRecord
  validates_presence_of :name, :interval
end
