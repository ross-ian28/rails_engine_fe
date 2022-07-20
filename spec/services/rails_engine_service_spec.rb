require "rails_helper"

RSpec.describe RailsEngineService do
  describe 'get_all_merchants' do
    it 'retuns data for all merchants' do
      merchants = RailsEngineService.get_all_merchants

      expect(merchants[:data].count).to eq(100)

      expect(merchants[:data][0]).to include :id, :type
      expect(merchants[:data][0][:attributes]).to include :name
    end
  end

  describe 'gets_single_merchant' do
    it 'retuns data for a single' do
      merchant = RailsEngineService.gets_single_merchant(1)

      expect(merchant[:data]).to include :id, :type
      expect(merchant[:data][:attributes]).to include :name
    end
  end

  describe 'gets_merchant_items' do
    it 'retuns data for a merchants items' do
      items = RailsEngineService.gets_merchant_items(1)

      expect(items[:data].count).to eq(15)

      expect(items[:data][0]).to include :id, :type
      expect(items[:data][0][:attributes]).to include :name, :description, :unit_price, :merchant_id
    end
  end
end
