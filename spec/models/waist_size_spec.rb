require "spec_helper"

describe WaistSize do

  it "adds waist size to user" do
    user = User.create
    item = Item.create
    user_item = UserItem.create(user: user, item: item)
    user_item.features.create(type: "WaistSize", value: 123)
    user_item.should have(1).features
    user_item.waist_size.should == 123
  end

end