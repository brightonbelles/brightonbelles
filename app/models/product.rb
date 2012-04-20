class Product < ActiveYaml::Base
  include ActiveHash::Associations
  set_root_path ::File.expand_path('../../../data', __FILE__)
  set_filename 'products'

  belongs_to :collection
  belongs_to :product_range

  def to_param
    "#{id}-#{name.to_url}"
  end
end
