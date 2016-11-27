require 'sinatra'
require 'sinatra/reloader' if development?
require 'open-uri'
require 'article'

set :bind, '0.0.0.0'
set :port, '5678'

get '/articles' do
  "First article has title '#{Article.first.title}'."
end
