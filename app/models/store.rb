class Store < ActiveRecord::Base
  has_many :features, as: :associated
end
