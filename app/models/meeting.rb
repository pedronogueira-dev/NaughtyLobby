class Meeting < ApplicationRecord
  belongs_to :user
  belongs_to :politician

  validates :user_id, :politician_id, :start_date, :end_date, presence: true
end
