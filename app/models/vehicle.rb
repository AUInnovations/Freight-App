class Vehicle < ActiveRecord::Base
  include Tombstoneable, EnumHelper
  has_paper_trail
  rails_admin do
    configure :order do
      inline_add false
      inline_edit false
    end
    include_all_fields
    exclude_fields :versions, :deleted
  end
  def vehicle_type_cd_enum
    vehicle_type_cd
  end
  belongs_to :order
end
