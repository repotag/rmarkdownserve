require 'sinatra'
require 'open3'
require 'json'

module RMarkdownServe
  class App < Sinatra::Base
    R_COMMAND = '/usr/local/bin/r --no-save -q -s'
    
    # Takes a full doc fragment, knits it as a whole, and returns the rendered doc.
    post '/doc2html' do
      content_type :html
      md2html(params[:doc])
    end
    
    # Takes JSON array of fragments (codeblock), renders them individually, and returns a JSON array with the rendered fragments.
    post '/fragments2html' do
      content_type :json
      fragments = JSON.parse(request.body.read)['fragments']
      md2html(*fragments).to_json
    end
    
    private
    
    def md2html(*chunks, &block)
      chunks.map! {|chunk| "doc <- #{chunk.dump}\nprint(knitr::knit2html(text = doc, fragment.only = TRUE, quiet = TRUE))"}
      open_r("#{knit_pre}\n#{chunks.join("\n")}").split("\n").map {|result| result[4..-1] } # Each result line is of the form: [1] "result" 
    end
    
    def knit_pre
      <<-EOF
      library(knitr)
      knitr::render_markdown(strict = TRUE)
      #{custom_pre}
      EOF
    end
    
    def custom_pre
      # User provided setup code, e.g.:
      'library(ggplot2)'
    end
    
    def open_r(command)
      output, err, status = Open3.capture3(R_COMMAND, :stdin_data => command)
      # TODO: error handling
      output
    end
  end
end

RMarkdownServe::App.run!