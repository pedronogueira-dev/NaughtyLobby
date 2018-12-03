class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.date :start_date
      t.date :end_day
      t.references :user, foreign_key: true
      t.references :politician, foreign_key: true

      t.timestamps
    end
  end
end
