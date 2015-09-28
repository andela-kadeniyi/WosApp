class AddIndexOnArticleToComments < ActiveRecord::Migration
  def change
    add_index :comments, :article_id, name: 'article_id_ix'
  end
end
