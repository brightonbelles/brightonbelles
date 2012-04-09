class CollectionsController < ApplicationController

  def show
    @collection = Collection.find_by_id(params[:id].gsub(/-.*$/, ''))
    @products = @collection.products
  end

end
