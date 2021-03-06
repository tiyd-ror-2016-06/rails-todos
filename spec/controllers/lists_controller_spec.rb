require 'rails_helper'

describe ListsController do
  it "lets users create lists" do
    user = create :user
    sign_in user

    # expect do
    #   response = post :create, title: "New List"
    # end.to change { user.lists.count }.by 1

    old_count = user.lists.count
    response = post :create, title: "New List"

    expect(response.status).to eq 302
    expect(user.lists.count).to eq old_count + 1
    expect(user.lists.last.title).to eq "New List"
  end

  it "disallows deleting other lists" do
    user = create :user
    sign_in user

    list = create :list

    count = list.user.lists.count
    response = delete :destroy, id: list.id

    expect(response.status).to eq 302
    # List.find list.id works ...
    expect(list.user.lists.count).to eq count
  end
end
