class Load < ActiveRecord::Base
  belongs_to :order
  belongs_to :carrier
end
