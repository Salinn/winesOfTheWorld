class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :week_number
      t.integer :class_id
      t.integer :wine_id

      t.timestamps
    end
  end
end
