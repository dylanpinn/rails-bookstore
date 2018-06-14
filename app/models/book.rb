class Book < ApplicationRecord
  has_many :book_authors
  has_many :authors, through: :book_authors

  validates :title, presence: true

  accepts_nested_attributes_for :authors, reject_if: :all_blank, allow_destroy: true
end
