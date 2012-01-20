#!/usr/bin/env ruby -wKU
# book-store.rb
require 'rubygems'
require 'sinatra'
require 'json'
require 'mongo'

db = Mongo::Connection.new.db("book-store")

auth = db.authenticate("book-store","banana banana apple orange")


books = db.collection("books")
tags = db.collection("tags")
users = db.collection("users")


get '/' do
	erb :index, :locals => { :title => "Hello World" }
end

get '/json/:name' do
	content_type :json
	{:greeting => 'Hello', :subject => 'World', :name => params[:name]}.to_json
end

get '/:user' do
	user_books = Array.new
	books.find("username" => params[:user]) do | book | 
		user_books.push( book )
	end
	user_books.to_json;
end