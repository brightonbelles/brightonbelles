class Product < ActiveYaml::Base
  set_root_path ::File.expand_path('../../../data', __FILE__)
  set_filename 'products'
end
