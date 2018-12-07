class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :politician

  validates :subject, presence: true
  validates_uniqueness_of :subject, scope: [:politician_id, :user_id]


  SUBJECTS = ["Birth Control", "Gun Control", "Imigration", "Drug Legalization", "Police Reform"]
end
