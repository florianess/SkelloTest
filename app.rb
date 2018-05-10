require "sinatra"
require "erb"
require = 'json'
require "sinatra/reloader" if development?
require_relative "database"

get "/" do
  @posts = DB
  @comments = COMMENTS
  erb :posts
end

get "/post/:id" do
  index = params['id'].to_i
  @post = DB[index]
  @comments = COMMENTS[index]
  erb :post
end
