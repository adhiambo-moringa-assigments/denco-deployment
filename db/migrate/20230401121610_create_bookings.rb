class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :moving_to
      t.string :moving_from
      t.string :moving_date
      t.string :house_size
      t.references :usr, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true


      t.timestamps
    end
  end
end
