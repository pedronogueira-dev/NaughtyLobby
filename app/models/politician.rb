class Politician < ApplicationRecord
  has_many :reviews
  has_many :meetings
  has_many :votes

  validates :name, presence: true
  validates :tag_line, presence: true
  validates :photo_url, presence: true
  validates :location, presence: true
  validates :party, presence: true
  validates :current_salary, numericality: { only_integer: true, greater_than: 0 }

  def avg_rating
    review_list = reviews
    if review_list.size > 0
      review_list.reduce(0) { |acc, review| acc += review.rating } /review_list.size
    else
      0
    end
  end

  def self.top_rated
    all.sort_by { |politician| - politician.avg_rating }
  end
end
