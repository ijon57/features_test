class UserItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  has_many :waist_sizes, class_name: "WaistSize", as: :associated

  attr_accessible :user_id, :item_id, :user, :item
end
