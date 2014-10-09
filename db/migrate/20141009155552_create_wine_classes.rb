class CreateWineClasses < ActiveRecord::Migration
  def change
    create_table :wine_classes do |t|
      t.string :name
      t.date :meeting_time

      t.timestamps
    end
  end
end
