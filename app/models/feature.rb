class Feature < ActiveRecord::Base

  belongs_to :associated, polymorphic: true
  attr_accessible :associated_id, :associated_type, :type, :value
end
