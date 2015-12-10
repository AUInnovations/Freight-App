class Order < ActiveRecord::Base
  has_paper_trail
  has_many :vehicles
end
