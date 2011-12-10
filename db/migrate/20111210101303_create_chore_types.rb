class CreateChoreTypes < ActiveRecord::Migration
  def change
    create_table :chore_types do |t|
      t.integer :points
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
