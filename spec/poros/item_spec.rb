require 'rails_helper'

RSpec.describe Item do
  it 'populates Item fields from JSON response' do
    data = {
      id: "5",
      attributes: {
        name: "Shiny Sword"
      }
    }


    item = Item.new(data)

    expect(item).to be_a Item

    expect(item.id).to eq(data[:id])
    expect(item.name).to eq(data[:attributes][:name])
  end
end
