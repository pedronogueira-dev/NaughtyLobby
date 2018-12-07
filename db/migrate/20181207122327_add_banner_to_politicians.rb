class AddBannerToPoliticians < ActiveRecord::Migration[5.2]
  def change
    add_column :politicians, :banner, :string
  end
end
