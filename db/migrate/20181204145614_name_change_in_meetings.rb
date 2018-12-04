class NameChangeInMeetings < ActiveRecord::Migration[5.2]
  def change
    rename_column :meetings, :end_day, :end_date
  end
end
