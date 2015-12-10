class Vehicle < ActiveRecord::Base
  has_paper_trail
  belongs_to :order
end
