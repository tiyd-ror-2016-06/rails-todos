require 'rails_helper'

describe ListPolicy do
  it "anyone can create" do
    user = create :user
    list = user.lists.new

    p = ListPolicy.new(user, list)

    expect(p.create?).to eq true
  end

  it "doesn't allow normal users to destroy" do
    user  = create :user
    other = create :user
    list  = other.lists.create! title: "New List"

    p = ListPolicy.new(user, list)

    expect(p.destroy?).to eq false
  end

  it "does allow admins to destroy" do
    user  = create :admin
    other = create :user
    list  = other.lists.create! title: "New List"

    p = ListPolicy.new(user, list)

    expect(p.destroy?).to eq true
  end
end
