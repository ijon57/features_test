class WaistSize < UserItemFeature

  def self.value associated
    value = super(associated,self)
    value.to_i if value
  end
end