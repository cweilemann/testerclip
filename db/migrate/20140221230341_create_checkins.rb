class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.string :name
      t.string :comment
      t.integer :location_id

      t.timestamps
    end
  end
end
