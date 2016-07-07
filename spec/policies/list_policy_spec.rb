require 'rails_helper'

describe ListPolicy do
  def make_user opts={}
    @count ||= 0
    @count += 1
    User.create!(
      email:    opts[:email] || "email#{@count}@example.com",
      password: "password",
      admin:    opts[:admin] || false,
      name:     "Me"
    )
  end

  it "anyone can create" do
    user = make_user
    list = user.lists.new

    p = ListPolicy.new(user, list)

    expect(p.create?).to eq true
  end

  it "doesn't allow normal users to destroy" do
    user  = make_user admin: false
    other = make_user
    list  = other.lists.create! title: "New List"

    p = ListPolicy.new(user, list)

    expect(p.destroy?).to eq false
  end

  it "does allow admins to destroy" do
    user  = make_user admin: true
    other = make_user
    list  = other.lists.create! title: "New List"

    p = ListPolicy.new(user, list)

    expect(p.destroy?).to eq true
  end
end
