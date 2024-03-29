class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates_length_of :comment, :minimum => 6
  validates_uniqueness_of :list_id, scope: [:movie_id]
end
