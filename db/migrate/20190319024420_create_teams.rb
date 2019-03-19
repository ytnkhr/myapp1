class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :title
      t.string :area_prof
      t.string :area_city
      t.string :genre
      t.string :level
      t.string :start_age
      t.string :end_age
      t.text   :introduction

      t.timestamps
    end
  end
end
