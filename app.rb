require 'sinatra'
require 'sinatra/reloader' if development?

$LOAD_PATH << File.expand_path(File.dirname(__FILE__), "lib")
require 'article'

set :bind, '0.0.0.0'

get '/articles' do
  logger.info("The hostname is #{ENV['HOSTNAME']}")
  "First article has title '#{Article.first.title}'."
end
