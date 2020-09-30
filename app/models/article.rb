class Article < ApplicationRecord
  belongs_to :user
  belongs_to :kitchen
  belongs_to :bath
  belongs_to :toilet
  has_many :comments

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre

  validates :title, :text, :genre, presence: true
  validates :genre_id, numericality: { other_than: 1 }

end
