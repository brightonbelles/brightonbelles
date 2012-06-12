class ProductRangesController < ApplicationController

  def show
    @range = ProductRange.find_by_id!(params[:id].gsub(/-.*$/, ''))
    @products = @range.products
    @title_extra = @range.name
  end

end
