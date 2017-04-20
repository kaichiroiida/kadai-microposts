class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :micropost
  
  validates :user_id, presence: true
  validates :micropost_id, presence: true
  
  
  has_many :favorites
  has_many :favoritings, through: :favorites, source: :micropost
end
