class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.integer :follower
      t.integer :followed
      t.string  :first_contact
      
      t.timestamps
    end
  end
end
