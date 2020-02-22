class CreateQs < ActiveRecord::Migration[5.2]
  def change
    create_table :qs do |t|
      t.integer :category_id
      t.integer :user_id
      t.string :qtitle
      t.string :qchoice

      t.timestamps
    end
  end
end
