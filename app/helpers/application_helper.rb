module ApplicationHelper

  def asset_url(asset)
    "#{request.protocol}#{request.host_with_port}#{asset_path(asset)}"
  end

  def tracked_link_to(text, href, options={})
    options[:class] = options[:class] ? "tracked #{options[:class]}" : 'tracked'
    options['data-type'] = options[:event_type] ? options.delete(:event_type) : 'Link'
    link_to text, href, options
  end

end
