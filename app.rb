# encoding: utf-8
require 'sinatra'
require 'sinatra/activerecord'
require 'erb'
require File.dirname(__FILE__) + '/models/estate.rb'

set :database, 'mysql://app5315771:fNRKdpEP@instance18199.db.xeround.com.:12020/app5315771'

before do
  content_type :html, 'charset' => 'utf-8'
end

get '/' do
  @estates = Estate.all()
  erb :index
end

get '/add' do
  erb :add
end

post '/add' do
  @estate = Estate.new(params)
  if @estate.save
    redirect '/'
  else
    'Ocorreu algum erro ao adicionar esse imóvel...'
  end
end