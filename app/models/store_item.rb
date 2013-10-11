class StoreItem < ActiveRecord::Base
  belongs_to :store
  belongs_to :item
  has_many :features, as: :associated
end
