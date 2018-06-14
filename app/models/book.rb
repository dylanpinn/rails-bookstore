class Book < ApplicationRecord
  has_many :authors, through: :book_authors
  has_many :book_authors

  validates :title, presence: true
end
