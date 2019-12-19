class CreateStudyTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :study_times do |t|
      t.datetime :start
      t.datetime :finish
      t.datetime :studydate
      t.integer :user_id
      t.integer :plan_id

      t.timestamps
    end
  end
end
