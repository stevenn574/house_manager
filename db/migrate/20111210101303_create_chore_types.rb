class CreateChoreTypes < ActiveRecord::Migration
  def change
    create_table :chore_types do |t|
      t.integer :points
      t.varchar :title
      t.text :descrption

      t.timestamps
    end
  end
end
