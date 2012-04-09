class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_ranges

  private

  def load_ranges
    @collections = Collection.find(:all)
    @ranges = ProductRange.find(:all)
  end

end
