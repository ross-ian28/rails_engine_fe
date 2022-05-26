class MerchantsController
  def index
    @facade = RailsEngineFacade.all_merchants
  end
end
