class Feature < ActiveRecord::Base

  belongs_to :associated, polymorphic: true
  attr_accessible :associated_id, :associated_type, :type, :value

  def self.value associated, feature_type
    feature = where(associated_id: associated, type: feature_type).first
    feature.value if feature
  end

  def self.convert_value value, value_type
  end
end
