require "rails_helper"

RSpec.describe "merchant show" do
  it "shows correct merchant id" do
    visit "/merchants/1"

    expect(page).to have_content("Merchant 1")
  end

  it "shows correct merchant id" do
    visit "/merchants/8"

    expect(page).to have_content("Merchant 8")
  end

  it "has list of all items items" do
    visit "/merchants/3"

    expect(page).to have_content("Item Enim Error")
    expect(page).to have_content("Item Ut Iusto")
  end
end
