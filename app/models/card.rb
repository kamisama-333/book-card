class Card < ApplicationRecord
  validates :title, :author, :price, :publisher, presence: true
end
