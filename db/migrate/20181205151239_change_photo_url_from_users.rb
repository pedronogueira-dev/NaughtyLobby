class ChangePhotoUrlFromUsers < ActiveRecord::Migration[5.2]
  def change
  change_column :users, :photo_url, :string, default: "https://res.cloudinary.com/pnogueira/image/upload/v1544107811/yx1ufebh4xkwcre1xiih.png"
  end
  User.find_each {|user| user.update(photo_url:"https://res.cloudinary.com/pnogueira/image/upload/v1544107811/yx1ufebh4xkwcre1xiih.png") unless user.photo_url.present? }
end
