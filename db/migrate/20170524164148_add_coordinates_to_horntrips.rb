class AddCoordinatesToHorntrips < ActiveRecord::Migration[5.0]
  def change
    add_column :horntrips, :latitude, :float
    add_column :horntrips, :longitude, :float
  end
end
