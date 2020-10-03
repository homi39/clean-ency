class Bath < ApplicationRecord
  belongs_to :user
  has_many :ba_comments

  with_options presence: true do
    validates :title
    validates :text
  end

  def self.search(search)
    if search != ""
      Bath.where('text LIKE(?)', "%#{search}%")
    else
      Bath.all
    end
  end
end