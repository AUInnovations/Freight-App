class User < ActiveRecord::Base
  include Tombstoneable, EnumHelper
  has_paper_trail
  rails_admin do
    include_all_fields
    exclude_fields :versions, :deleted
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def role_enum
    roles
  end
end
