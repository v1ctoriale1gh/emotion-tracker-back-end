class CreateEmotions < ActiveRecord::Migration[6.0]
  def change
    create_table :emotions do |t|
      t.integer :log_id
      t.integer :intensity

      t.timestamps
    end
  end
end
