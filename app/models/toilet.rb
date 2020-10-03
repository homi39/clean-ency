class Toilet < ApplicationRecord
  belongs_to :user
  has_many :to_comments
  
  with_options presence: true do
    validates :title
    validates :text
  end
end
