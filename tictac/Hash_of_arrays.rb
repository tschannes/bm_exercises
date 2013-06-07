class Article
  attr_accessor :name, :month

  def initialize(name, month)
    @name = name
    @month = month
  end
end

articles = [
  Article.new("Article1", "Feb"), 
  Article.new("Article2", "Feb"), 
  Article.new("Article3", "Feb"), 
  Article.new("Article4", "Mar"), 
  Article.new("Article5", "Mar"), 
]

months = {}
articles.each do |a|
  months[a.month] ||= []
  months[a.month] << a.name
end

p months
