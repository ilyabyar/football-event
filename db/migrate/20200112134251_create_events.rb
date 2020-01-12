class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.string :name, null: false
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
