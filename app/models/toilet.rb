class Toilet < ApplicationRecord
  belongs_to :user
  has_many :to_comments
  
  with_options presence: true do
    validates :title
    validates :text
  end

  def self.search(search)
    if search != ''
      Toilet.where('text LIKE(?)', "%#{search}%")
    else
      Toilet.all
    end
  end
end
