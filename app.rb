require 'sinatra/base'
require 'sinatra/config_file'
require 'erb'

class Imobiliaria < Sinatra::Base
  register Sinatra::ConfigFile
  config_file File.dirname(__FILE__) + '/config/config.yml'
  
  set :root, File.dirname(__FILE__)
  set :public_folder, Proc.new { File.join(root, settings.assets_folder) }
  set :views, Proc.new { File.join(root, settings.views_folder) }
  
  get '/' do
    erb :index
  end
end