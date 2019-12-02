class CreateBreaks < ActiveRecord::Migration[5.2]
  def change
    create_table :breaks do |t|
      t.time :stop
      t.time :restart
      t.integer :study_time_id

      t.timestamps
    end
  end
end
