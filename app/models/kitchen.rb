class Kitchen < ApplicationRecord
  belongs_to :user
  has_many :ki_comments
  
  with_options presence: true do
    validates :title
    validates :text
  end
end
