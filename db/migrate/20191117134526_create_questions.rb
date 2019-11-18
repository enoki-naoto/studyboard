class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      
      t.integer :category_id
      t.integer :user_id
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
