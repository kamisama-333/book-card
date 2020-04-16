class Card < ApplicationRecord
  validates :title, :author, :price, :publisher, presence: true
  belongs_to :user
end
