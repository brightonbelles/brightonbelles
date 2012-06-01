class SearchController < ApplicationController

  def keyword
    unless params[:q].blank?

      @matches = ferret_match(params[:q])
      if @matches.empty?
        @randoms = Product.all.shuffle[0..2]
      end
      render 'search/results'

    else
      redirect_to '/'
    end
  end

  private

  def ferret_match(q)
    index = SearchIndex::INDEX
    matches = []
    index.search_each(q) do |hit, score|
      product = Product.find_by_id(index[hit][:id])
      matches << product if product
    end
    return matches
  end

end
