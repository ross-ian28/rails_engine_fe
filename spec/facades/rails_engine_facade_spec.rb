require "rails_helper"

RSpec.describe RailsEngineFacade do
  describe 'all_merchants' do
    it 'creates merchant object for all merchants' do
      merchants = RailsEngineFacade.all_merchants

      expect(merchants.count).to eq(100)

      expect(merchants).to be_an Array
      expect(merchants).to be_all Merchant
    end
  end

  describe 'single_merchant' do
    it 'creates a merchant object for a single' do
      merchant = RailsEngineFacade.single_merchant(1)

      expect(merchant).to be_a(Merchant)
    end
  end

  describe 'merchant_items' do
    it 'creates item objects for a merchants items' do
      items = RailsEngineFacade.merchant_items(1)

      expect(items.count).to eq(15)

      expect(items).to be_an Array
      expect(items).to be_all Item
    end
  end
end
