module Jekyll
  module AssetFilter
    def glossary(input)
		
		start = 0
		while matchdata = input.match('\?\?\?(\w+)', start) 		  
			start = matchdata.end(0)
			origin = matchdata[0];
#			puts "Glossary: |"+origin+"|"
			replaceby = '<a href="#gloss'+matchdata[1]+'" role="button" data-toggle="modal"><u><i class="icon-info-sign"></i></u></a>'
			input = input.sub(origin,replaceby)
		end
		return  input	  	 		
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetFilter)