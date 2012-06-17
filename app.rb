require 'sinatra'
require 'sinatra/activerecord'
require 'erb'
require File.dirname(__FILE__) + '/models/estate.rb'

set :database, 'mysql://app5315771:fNRKdpEP@instance18199.db.xeround.com.:12020/app5315771'

get '/' do
  @estates = Estate.all()
  erb :index
end