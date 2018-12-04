class AddUsedServicesToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :used_services, :boolean, default: false, null: false
  end
end
