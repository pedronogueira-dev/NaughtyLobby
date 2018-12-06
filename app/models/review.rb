class Review < ApplicationRecord
  belongs_to :user
  belongs_to :politician

  validates :title, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false
  validates :rating, presence: true, inclusion: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  def review_verified?
    user.politicians.include?(politician)
  end
end
