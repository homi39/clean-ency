class User < ApplicationRecord
   has_many :kitchens
   has_many :bathes
   has_many :toilets
   has_many :comments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname
    validates :email, uniqueness: true
    validates :name, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/ }
    validates :name_kana, format: { with: /\A[ァ-ヶー－]+\z/}
    validates :occupation_id
    validates :gender_id
    validates :family_member
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i}
    validates :birth
  end

  with_options numericality: { other_than: 1 } do
    validates :occupation_id
    validates :gender_id
  end

end
