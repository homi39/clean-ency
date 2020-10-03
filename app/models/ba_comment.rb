class BaComment < ApplicationRecord
  belongs_to :bath
  belongs_to :user
  validates :text, presence: true
end
