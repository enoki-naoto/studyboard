class CreateQcontents < ActiveRecord::Migration[5.2]
  def change
    create_table :qcontents do |t|
      t.integer :q_id
      t.string :qsentence
      t.string :choice1
      t.string :choice2
      t.string :choice3
      t.timestamps
    end
  end
end
