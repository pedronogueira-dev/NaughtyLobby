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
  mount_uploader :banner, PhotoUploader
  mount_uploader :photo_url, PhotoUploader
  def avg_rating(review_list = reviews)
    # review_list = reviews
    # if review_list.size > 0
    #   review_list.reduce(0) { |acc, review| acc += review.rating } /review_list.size
    # else
    #   0
    # end
    if review_list.nil? || review_list.empty?
      0.0
    else
      review_list.average(:rating).round(2)
    end
  end

  def self.top_rated
    all.sort_by { |politician| - politician.avg_rating }
  end

  def self.top(size)
    query = "SELECT politicians.id, politicians.name, politicians.tag_line, politicians.photo_url, "\
            "AVG(COALESCE(reviews.rating, 0)) as average "\
            "FROM politicians "\
            "LEFT JOIN reviews ON reviews.politician_id = politicians.id "\
            "GROUP by politicians.id, politicians.name "\
            "ORDER BY average DESC "\
            "LIMIT #{size}"
    Politician.find_by_sql(query)
  end

  def verified_reviews
    reviews.where(used_services: true)
  end
end
