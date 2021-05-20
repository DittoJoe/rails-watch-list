class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :list, uniqueness: { scope: :movie }
  belongs_to :movie
  belongs_to :list
end
