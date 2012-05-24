class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from ActiveHash::RecordNotFound, :with => :not_found
  rescue_from ActionView::MissingTemplate, :with => :not_found

  if ENV['RAILS_ENV'] == 'development'
    before_filter :reload_yaml
  end

  before_filter :load_ranges

  private

  def reload_yaml
    [ Product, Collection, ProductRange ].each do |model|
      model.reload(true)
    end
  end

  def load_ranges
    @collections = Collection.find(:all)
    @ranges = ProductRange.find(:all)
  end

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end

end
