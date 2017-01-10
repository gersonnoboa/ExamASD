class Property < ActiveRecord::Base
  has_many :reservations 
end