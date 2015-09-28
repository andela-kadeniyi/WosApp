class Article < ActiveRecord::Base
  belongs_to :author, counter_cache: true
  has_many :comments

  def self.all_names
    all.pluck(:name)
  end

  def self.five_longest_article_names
    limit(5).order("(LENGTH(name)) desc").pluck(:name)
  end

  def self.articles_with_names_less_than_20_char
    where("length(name) < 20")
  end

  def self.author_with_most_upvoted_article
    order("upvotes desc").first.author.name
  end
end
