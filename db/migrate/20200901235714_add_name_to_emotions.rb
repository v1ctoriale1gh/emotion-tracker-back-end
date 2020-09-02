class AddNameToEmotions < ActiveRecord::Migration[6.0]
  def change
    add_column :emotions, :name, :string
  end
end
