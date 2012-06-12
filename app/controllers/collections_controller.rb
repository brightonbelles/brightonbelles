class CollectionsController < ApplicationController

  def index
    @collections = Collection.find(:all)
  end

  def show
    @collection = Collection.find_by_id(params[:id].gsub(/-.*$/, ''))
    @products = @collection.products
    @title_extra = "#{@collection.name} Collection"
  end

end
