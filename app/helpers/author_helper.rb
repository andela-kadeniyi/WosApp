module AuthorHelper
  def cache_key_for_authors
    count_authors  = Author.count
    count_articles  = Article.count
    author_max_updated_at = Author.maximum(:updated_at).try(:utc).try(:to_s, :number)
    article_max_updated_at = Article.maximum(:updated_at).try(:utc).try(:to_s, :number)
    "authors/all-#{count_authors}-#{count_articles}-#{author_max_updated_at}-#{article_max_updated_at}"
  end
  
end
