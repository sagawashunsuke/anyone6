class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.integer     :transaction, null: false
      t.timestamps
    end
  end
end
