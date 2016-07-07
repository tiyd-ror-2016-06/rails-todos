require 'rails_helper'

describe ListPolicy do
  it "anyone can create" do
    # list = create :list
    # user = list.user
    user = create :user
    list = create :list, user: user

    p = ListPolicy.new(user, list)

    expect(p.create?).to eq true
  end

  it "doesn't allow normal users to destroy" do
    user = create :user
    list = create :list

    p = ListPolicy.new(user, list)

    expect(p.destroy?).to eq false
  end

  it "does allow admins to destroy" do
    user = create :admin
    list = create :list

    p = ListPolicy.new(user, list)

    expect(p.destroy?).to eq true
  end
end
