class Carrier < ActiveRecord::Base
  has_paper_trail
  has_many :orders, :inverse_of => :carrier
end
