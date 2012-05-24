class ProductRangesController < ApplicationController

  def index
    @ranges = ProductRange.find(:all)
  end

  def show
    @range = ProductRange.find_by_id!(params[:id].gsub(/-.*$/, ''))
    @products = @range.products
  end

end
