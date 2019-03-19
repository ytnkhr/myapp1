class CreateEvaluations < ActiveRecord::Migration[5.0]
  def change
    create_table :evaluations do |t|
      t.integer :user_id
      t.integer :eva_user_id
      t.integer :point
      t.text    :content

      t.timestamps
    end
  end
end
