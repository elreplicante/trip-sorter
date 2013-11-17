class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :departure
      t.string :arrival
      t.string :transportation
      t.string :seat

      t.timestamps
    end
  end
end
