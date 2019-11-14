class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      
      t.integer :plan_id
      t.integer :user_id
      t.string :list

      t.timestamps
    end
  end
end
