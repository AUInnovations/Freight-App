class CarrierLane < ActiveRecord::Base
  include Tombstoneable
  belongs_to :carrier
  rails_admin do
    configure :carrier do
      inline_add false
      inline_edit false
    end
  end
end
