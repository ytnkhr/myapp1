class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.integer :room_id
      t.integer :user_id
      t.text    :content

      t.timestamps
    end
  end
end
