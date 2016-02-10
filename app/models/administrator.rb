class Administrator < ActiveRecord::Base
  include Tombstoneable
  has_paper_trail
end
