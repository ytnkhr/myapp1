class CreateTeamDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :team_details do |t|
      t.integer :team_id
      t.string  :image_name
      t.string  :tag_name
      
      t.timestamps
    end
  end
end
