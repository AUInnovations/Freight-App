class Load < ActiveRecord::Base
  include Tombstoneable, EnumHelper
  belongs_to :order
  belongs_to :carrier
  rails_admin do
    include_all_fields
    exclude_fields :versions, :deleted
  end
  def status_enum
    load_status
  end
end
