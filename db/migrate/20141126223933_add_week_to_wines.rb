class AddWeekToWines < ActiveRecord::Migration
  def change
    add_column :wines, :week_id, :integer
  end
end
