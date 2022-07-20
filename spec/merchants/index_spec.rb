require "rails_helper"

RSpec.describe "merchant index" do
  it "shows list of merchants" do
    visit "/merchants"

    expect(page).to have_content("Schroeder-Jerde")
    expect(page).to have_content("Glover Inc")
  end

  it "has link to each merchant show page" do
    visit "/merchants"
    
    click_on "Schroeder-Jerde"
    expect(current_path).to eq("/merchants/1")
  end
end
