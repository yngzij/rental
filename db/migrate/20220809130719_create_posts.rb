class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :intro, null: false
      t.string :title, default: ''
      t.string :username, null: false
      t.string :avatar, default: ''
      t.string :address, default: ''
      t.timestamps
      t.datetime :deleted_at
    end
  end
end
