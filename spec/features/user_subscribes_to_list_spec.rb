require "rails_helper"


RSpec.describe "User subscribes to list" do

  subscriber_count = Subscriber.count

  it "check that user is redirected to home page" do
    visit root_path
    fill_in :subscriber_email, with: "test@gmail.com"
    find(".btn--purple-light").click
    expect(page.current_path).to eq root_path
    expect(Subscriber.count).to eq subscriber_count + 1
  end

end
