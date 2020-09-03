class ChangeIntensityDataTypeOnEmotionsToString < ActiveRecord::Migration[6.0]
  def change
    change_column :emotions, :intensity, :string
  end
end
