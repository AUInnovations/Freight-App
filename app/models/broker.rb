class Broker < ActiveRecord::Base
  include Tombstoneable
  has_paper_trail
  has_many :orders, :inverse_of => :broker
  rails_admin do
    include_all_fields
    exclude_fields :versions, :deleted
  end
end
