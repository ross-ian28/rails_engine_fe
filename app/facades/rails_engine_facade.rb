class RailsEngineFacade
  def self.all_merchants
    RailsEngineService.get_all_merchants[:data].map do |data|
      Merchant.new(data)
    end
  end
end
