class CarrierLane < ActiveRecord::Base
  include Tombstoneable, EnumHelper
  belongs_to :carrier
  rails_admin do
    configure :carrier do
      inline_add false
      inline_edit false
    end
    include_all_fields
    exclude_fields :versions, :deleted
  end
  def local_or_lane_enum
    local_or_lane_cd
  end
end
