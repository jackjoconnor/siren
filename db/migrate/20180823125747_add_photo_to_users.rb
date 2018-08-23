class AddPhotoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :photo, :string, default: "https://res.cloudinary.com/dm8awkcp1/image/upload/v1534326229/avatar.png"
  end
end
