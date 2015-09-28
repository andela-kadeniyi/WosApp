class AddIndexOnAuthorToArticles < ActiveRecord::Migration
  def change
    add_index :articles, :author_id, name: 'author_id_ix'
  end
end
