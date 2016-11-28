require 'open-uri'
require 'json'

class Article < OpenStruct
  def self.raw_articles
    JSON.parse(open('http://feed_reader/articles').read)['articles']
  end

  def self.all
    raw_articles.map { |article| Article.new(article) }
  end

  def self.first
    all.first
  end
end
