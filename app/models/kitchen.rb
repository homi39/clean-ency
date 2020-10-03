class Kitchen < ApplicationRecord
  belongs_to :user
  has_many :ki_comments
  
  with_options presence: true do
    validates :title
    validates :text
  end
  
  def self.search(search)
    if search != ""
      Kitchen.where('text LIKE(?)', "%#{search}%")
    else
      Kitchen.all
    end
  end
end