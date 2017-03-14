class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :city, foreign_key: true
      t.string :text
      t.string :title

      t.timestamps
    end
  end
end
