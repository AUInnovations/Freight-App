class Order < ActiveRecord::Base
  has_many :vehicles
end
