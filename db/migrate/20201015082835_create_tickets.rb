class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.integer     :user_id, null: false, foreign_key: true
      t.integer     :price, null: false
      t.timestamps
    end
  end
end
