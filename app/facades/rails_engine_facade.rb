class RailsEngineFacade
  def self.all_merchants
    RailsEngineService.get_all_merchants[:data].map do |data|
      Merchant.new(data)
    end
  end

  def self.single_merchant(merchant_id)
    data = RailsEngineService.gets_single_merchant(merchant_id)[:data]
    Merchant.new(data)
  end

  def self.merchant_items(merchant_id)
    RailsEngineService.gets_merchant_items(merchant_id)[:data].map do |data|
      Item.new(data)
    end
  end
end
