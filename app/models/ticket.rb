class Ticket < ActiveRecord::Base
  validates_presence_of :departure, :arrival
end
