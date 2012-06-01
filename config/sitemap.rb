# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.brightonbelles.com"

SitemapGenerator::Sitemap.create do

  [:about, :contact].each do |page|
    add page_path(:id => page)
  end

  add product_ranges_path, :priority => 0.7, :changefreq => 'weekly'
  add collections_path, :priority => 0.7, :changefreq => 'weekly'

  Product.find(:all).each do |product|
    add product_path(product)
  end

end
