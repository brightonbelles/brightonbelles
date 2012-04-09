class Collection < ActiveYaml::Base
  include ActiveHash::Associations
  set_root_path ::File.expand_path('../../../data', __FILE__)
  set_filename 'collections'

  has_many :products

  def to_param
    "#{id}-#{name.to_url}"
  end
end
