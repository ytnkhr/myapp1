class CreatePostDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :post_details do |t|
      t.integer :post_id
      t.string  :image_name
      t.string  :tag_name
      t.string  :type

      t.timestamps
    end
  end
end
