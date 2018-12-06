class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :meetings
  has_many :reviews
  has_many :votes
  mount_uploader :photo_url, PhotoUploader

  def politicians
    politicians = []
    reviews.each { |review| politicians << review.politician }
    votes.each { |vote| politicians << vote.politician }
    politicians
  end
end
