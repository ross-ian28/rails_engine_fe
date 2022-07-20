class MerchantsController < ApplicationController
  def index
    @facade = RailsEngineFacade.all_merchants
  end

  def show
  end
end
