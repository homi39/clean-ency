class ToComment < ApplicationRecord
  belongs_to :toilet
  belongs_to :user
  validates :text, presence: true
end
