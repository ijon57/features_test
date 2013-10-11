class User < ActiveRecord::Base
  has_many :features, as: :associated
end
