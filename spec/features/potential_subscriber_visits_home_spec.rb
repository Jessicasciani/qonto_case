require "rails_helper"


RSpec.describe "Check page status when potential subscriber visits home page" do

  it "check status page is 202" do
    visit root_path
    expect(page.status_code).to eq(200)
  end

end
