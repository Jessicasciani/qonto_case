require "rails_helper"


RSpec.describe "Check that user is redirected to home page after subscribing" do

  it "check that user is redirected to home page" do
    visit root_path
    fill_in :subscriber_email, with: "test@gmail.com"
    find(".btn--purple-light").click
    expect(page).to have_content "Prêt à ouvrir un compte professionnel"
  end

end
