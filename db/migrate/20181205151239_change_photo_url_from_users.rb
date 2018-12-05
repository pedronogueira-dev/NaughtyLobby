class ChangePhotoUrlFromUsers < ActiveRecord::Migration[5.2]
  def change
  change_column :users, :photo_url, :string, default: "https://github.com/Code-hound/NaughtyLobby/blob/master/app/assets/images/nl_logo.png"
  end
  User.find_each {|user| user.update(photo_url:"https://github.com/Code-hound/NaughtyLobby/blob/master/app/assets/images/nl_logo.png") unless user.photo_url.present? }
end
