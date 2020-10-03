class Bath < ApplicationRecord
  belongs_to :user
  has_many :ba_comments
  
  with_options presence: true do
    validates :title
    validates :text
  end
end
