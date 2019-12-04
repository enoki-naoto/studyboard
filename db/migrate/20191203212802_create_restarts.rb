class CreateRestarts < ActiveRecord::Migration[5.2]
  def change
    create_table :restarts do |t|
      t.time :re
      t.time :interval
      t.integer :user_id
      t.integer :study_time_id
      t.integer :break_id
      
      t.timestamps
    end
  end
end
