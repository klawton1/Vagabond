class EditUserImageColumn < ActiveRecord::Migration[5.0]
  def change
    change_column_default :users, :image, from: nil, to: "https://avatars3.githubusercontent.com/u/1489337?v=3&s=460"
    remove_column :users, :date_joined
  end
end
