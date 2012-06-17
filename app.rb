require 'sinatra/base'
require 'sinatra/config_file'
require 'sinatra/activerecord'
require 'erb'
#require File.dirname(__FILE__) + '/models/*.rb'

class Imobiliaria < Sinatra::Base
  register Sinatra::ConfigFile
  config_file './config/config.yml'
  
  set :root, File.dirname(__FILE__)
  set :public_folder, Proc.new { File.join(root, settings.assets_folder) }
  set :views, Proc.new { File.join(root, settings.views_folder) }
  set :database, 'mysql://app5315771:fNRKdpEP@instance18199.db.xeround.com.:12020/app5315771'
  
  get '/' do
    @estates = Estate.all()
    erb :index
  end
end