class CreateChores < ActiveRecord::Migration
  def change
    create_table :chores do |t|
      t.integer :user_id
      t.integer :chore_type_id

      t.timestamps
    end
  end
end
