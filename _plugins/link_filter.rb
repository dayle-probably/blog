module Jekyll
  module LinkFilter
    def remove_links(input)
      input.gsub(/<a[^>]*>(.*?)<\/a>/, '\1')
    end
  end
end

Liquid::Template.register_filter(Jekyll::LinkFilter)
