class Card < ApplicationRecord
  validates :title, :author, :price, :publisher, presence: true
  belongs_to :user

  def self.search(search)
    if search
      Card.where(' user_id LIKE(?) OR title LIKE(?) OR author LIKE(?) ', "%#{search}%", "%#{search}%", "%#{search}%") #　複数カラムの検索
    else
      Card.all
    end
  end
end
