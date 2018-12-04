class Politician < ApplicationRecord
  has_many :reviews
  has_many :meetings
  has_many :votes

  scope :top_rated, -> { joins(:reviews).group("politicians.id").order("AVG(SUM(reviews.score)) DESC")}
  validates :name,  presence: true
  validates :tag_line, presence: true
  validates :photo_url, presence: true
  validates :location, presence: true
  validates :party, presence: true
  validates :current_salary, numericality: { only_integer: true, greater_than: 0 }
end
