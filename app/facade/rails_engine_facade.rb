class RailsEngineFacade
  def self.all_merchants
    RailsEngineService.get_all_merchants.map { |data| Merchant.new(data) }
  end
end
