class Customer < ActiveRecord::Base
  include Tombstoneable
  has_paper_trail
  has_many :orders, :inverse_of => :customer
end
