class AddPhotoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :photo, :string, default: "https://res.cloudinary.com/dturke38u/image/upload/v1535039924/contact.png"
  end
end
