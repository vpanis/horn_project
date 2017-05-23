class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :status, default: "Pending"
      t.references :user, foreign_key: true
      t.references :horntrip, foreign_key: true

      t.timestamps
    end
  end
end
