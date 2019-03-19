class CreateSportsCats < ActiveRecord::Migration[5.0]
  def change
    create_table :sports_cats do |t|
      t.string :category
      t.string :sports_name

      t.timestamps
    end
  end
end
