class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      
      t.integer :studytime
      
      t.timestamps
    end
  end
end
