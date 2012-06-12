class ProductsController < ApplicationController

  def index
    @ranges = ProductRange.find(:all)
  end

  def show
    @product = Product.find_by_id(params[:id].gsub(/-.*$/, ''))
    @range = @product.product_range
    @range_products = @range.products.select {|p| p.id != @product.id }
    @range_products.shuffle!
    if @range_products.length > 2
      @range_products = @range_products[0..1]
    end
    @title_extra = @product.name
  end

end
