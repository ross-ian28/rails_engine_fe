require 'rails_helper'

RSpec.describe Merchant do
  it 'populates Merchant fields from JSON response' do
    data = {
      id: "8",
      attributes: {
        name: "Pabu"
      }
    }


    merchant = Merchant.new(data)

    expect(merchant).to be_a Merchant

    expect(merchant.id).to eq(data[:id])
    expect(merchant.name).to eq(data[:attributes][:name])
  end
end
