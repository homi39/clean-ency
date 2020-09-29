class AddGenreIdToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :genre_id, :integer
  end
end
