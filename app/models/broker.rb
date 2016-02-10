class Broker < ActiveRecord::Base
  include Tombstoneable
  has_paper_trail
  has_many :orders, :inverse_of => :broker
end
