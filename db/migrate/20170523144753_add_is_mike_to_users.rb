class AddIsMikeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_mike, :boolean
  end
end
