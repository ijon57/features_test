require "spec_helper"

describe WaistSize do

  it "adds waist size to user" do
    user = User.create
    item = Item.create
    user_item = UserItem.create(user: user, item: item)
    user_item.waist_sizes.create(value: 123)
    user_item.should have(1).waist_sizes
    user_item.waist_sizes.map(&:value).should == %w(123)
  end

end