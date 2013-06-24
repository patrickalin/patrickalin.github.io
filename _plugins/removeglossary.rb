module Jekyll
  module AssetFilter2
    def removeglossary(input)
		
		start = 0
		while matchdata = input.match('\?\?\?(\w+)', start) 		  
			start = matchdata.end(0)
			origin = matchdata[0];
			replaceby = ''
			input = input.sub(origin,replaceby)
		end
		return  input	  	 		
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetFilter2)