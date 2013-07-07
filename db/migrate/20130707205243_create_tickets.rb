class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.date :date
      t.time :time
      t.integer :seat
      t.integer :movie_id
      t.integer :user_id

      t.timestamps
    end
  end
end
