$: << File.join(File.dirname(__FILE__), 'lib')

require 'bundling'
require 'haml'
require 'partials'

# ------------------------------------------------
# CLASSIC STYLE APP - run 'shotgun sample_app.rb'
# ------------------------------------------------
# require 'sinatra'
# require 'sinatra/simple_navigation'
# 
# helpers Sinatra::Partials
# 
# helpers do
#   def example(options={}, &block)
#     out = partial 'examples/header', :locals => {:options => options}
#     out << capture_haml(&block)
#     out << (partial 'examples/footer', :locals => {:options => options})
#     out
#   end
# end
# 
# get '/*' do
#   haml :index
# end
# 
# get '/gist/:id' do
#   @gist_id = params[:id]
#   haml :gist_load, :layout => :gist_layout
# end


# --------------------------------------------
# MODULAR STYLE APP - run 'shotgun config.ru'
# ---------------------------------------------
require 'sinatra/base'
require 'sinatra/simple-navigation'
  
class SimpleNavigationApp < Sinatra::Base
  
  helpers Sinatra::Partials
  register Sinatra::SimpleNavigation

  helpers do
    def example(options={}, &block)
      out = partial 'examples/header', :locals => {:options => options}
      out << capture_haml(&block)
      out << (partial 'examples/footer', :locals => {:options => options})
      out
    end
  end

  get '/*' do
    haml :index
  end

  get '/gist/:id' do
    @gist_id = params[:id]
    haml :gist_load, :layout => :gist_layout
  end
  
  
end