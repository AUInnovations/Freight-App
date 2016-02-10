class Administrator < ActiveRecord::Base
  include Tombstoneable
  has_paper_trail

  rails_admin do
    include_all_fields
    exclude_fields :versions, :deleted
  end

end
