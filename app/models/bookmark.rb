class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :list_id, presence: true
  validates :movie_id, presence: true
  validates :comment, length: { minimum: 6 }
end
