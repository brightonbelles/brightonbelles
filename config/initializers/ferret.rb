require 'ferret'

class StemmingAnalyzer
  def token_stream(field, text)
    Ferret::Analysis::LowerCaseFilter.new(
      Ferret::Analysis::StemFilter.new(
        Ferret::Analysis::StandardTokenizer.new(text)
      )
    )
  end
end

module SearchIndex
  INDEX = Ferret::Index::Index.new(:analyzer => StemmingAnalyzer.new)

  INDEX.field_infos.add_field(:id, :store => :yes, :index => :untokenized)
  INDEX.field_infos.add_field(:name, :store => :yes, :index => :yes, :boost => 10.0)
  INDEX.field_infos.add_field(:desc, :store => :yes, :index => :yes, :boost => 0.0)

  Product.find(:all).each do |product|
    data = { :id => product.id, :name => product.name, :desc => product.description }
    INDEX << data
  end
end
