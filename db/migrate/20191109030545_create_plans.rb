class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      
      t.integer :user_id
      t.datetime :plandate
      t.string :achieve
      
      

      t.timestamps
    end
  end
end
