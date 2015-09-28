# Title: remove_alerts.rb
# Author: Scott Chamberlain, @sckott
# License: MIT

require 'oga'

module Jekyll
  module RemoveAlerts
    def remove_alerts(input)
    	res = Oga.parse_html(input)
      # res = Nokogiri::HTML(input)
      res.xpath('//div[@role="alert"]').remove
      res.to_xml
    end
  end
end
Liquid::Template.register_filter(Jekyll::RemoveAlerts)
