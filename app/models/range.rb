class ProductRange < ActiveYaml::Base
  include ActiveHash::Associations
  set_root_path ::File.expand_path('../../../data', __FILE__)
  set_filename 'ranges'
  
  has_many :products
end
