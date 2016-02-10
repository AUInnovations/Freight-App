class Load < ActiveRecord::Base
  include Tombstoneable
  belongs_to :order
  belongs_to :carrier
end
