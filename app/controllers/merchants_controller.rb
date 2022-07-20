class MerchantsController < ApplicationController
  def index
    @facade = RailsEngineFacade.all_merchants
  end

  def show
    @merchant = RailsEngineFacade.single_merchant(params[:id])
    @items = RailsEngineFacade.merchant_items(params[:id])
  end
end
