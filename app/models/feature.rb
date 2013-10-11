class Feature < ActiveRecord::Base

  belongs_to :associated, polymorphic: true
  attr_accessible :associated_id, :associated_type, :type, :value

  def self.value associated, feature_type, value_type = nil
    feature = where(associated_id: associated, type: feature_type).first
    value = feature.value if feature
    if value && value_type
      value = case value_type
      when :integer then value.to_i
      when :float then value.to_f
      when :boolean then value=="true"
      else value
      end
    end
    value
  end
end
