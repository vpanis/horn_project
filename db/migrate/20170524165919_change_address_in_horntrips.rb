class ChangeAddressInHorntrips < ActiveRecord::Migration[5.0]
  def change
    rename_column :horntrips, :location, :address
  end
end
