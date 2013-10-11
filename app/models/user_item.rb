class UserItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  has_many :features, as: :associated

  attr_accessible :user_id, :item_id, :user, :item

  def waist_size
    Feature.value(self, WaistSize, :integer)
  end
end
