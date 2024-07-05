class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: true
  before_destroy :destroy_associated_movies

  private

  def destroy_associated_movies
    self.movies.destroy_all
  end
end
