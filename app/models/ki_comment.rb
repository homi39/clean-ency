class KiComment < ApplicationRecord
  belongs_to :kitchen
  belongs_to :user
  validates :text, presence: true
end
