module Jekyll
  module TableOfContentsFilter1level
    def toc_list1level(document)
      toc = []
      html = ''
      content = Kramdown::Document.new(document)
      toc_tree = Kramdown::Converter::Toc.convert(content.root).first
      html << "<ul class='nav nav-list bs-docs-sidenav'>\n"
      toc_tree.children.each do |heading|
        html << show_tree1level(heading)
      end
      html << "</ul>\n"
    end
  end
end

def show_tree1level(my_item)
  html = ''
  html_id = my_item.attr[:id]
  text = my_item.value.options[:raw_text]
  html << "<li class=\"level-#{html_id}noprint \"><a href=\"\##{html_id}\">#{text}<i class=\"icon-chevron-right\"></i></a>\n"

  html << "</li>\n"

  return html
end

Liquid::Template.register_filter(Jekyll::TableOfContentsFilter1level)
