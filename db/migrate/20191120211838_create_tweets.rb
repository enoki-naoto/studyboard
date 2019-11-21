class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.integer :category_id
      t.integer :user_id
      t.string :text

      t.timestamps
    end
  end
end
