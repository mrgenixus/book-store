#!/usr/bin/env ruby -wKU
# book-store.rb
require 'rubygems'
require 'sinatra'
require 'json'

get '/' do
	"Hello World"
end

get '/json/:name' do
	content_type :json
	{:greeting => 'Hello', :subject => 'World', :name => params[:name]}.to_json
end

