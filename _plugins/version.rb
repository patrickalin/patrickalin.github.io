require 'rubygems'

module Jekyll
  class VersionReporter < Generator
    safe true
 
    def generate(site)
      puts 'Running version ...'
      
      filename = 'version.html'
      
      File.open(File.join(site.dest, filename), "w") do |file|
        file.write(generate_report(site))
      end
     
      # Keep the file from being cleaned by Jekyll
      site.static_files << Jekyll::SearchIndexFile.new(site, site.dest, "/", filename)
      puts '-------------------------'
    end
 
    private
 
    def generate_report(site)
      puts 'Write...' 
      puts site.dest
      "Site generated with Jekyll version: #{Jekyll::VERSION}"
    end
 
  end
end
