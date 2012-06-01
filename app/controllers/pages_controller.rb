class PagesController < ApplicationController

  def show
    if params[:id] == 'home'
      @carousel_products = []
      @carousel_products << Product.find(6)
      @carousel_products << ProductRange.find(1)
      @carousel_products << Product.find(5)
    end

    render "pages/#{params[:id]}"
  end

end
