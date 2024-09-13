class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.date :start_date
      t.date :end_date
      t.integer :capacity
      t.boolean :achieved

      t.timestamps
    end
  end
end
