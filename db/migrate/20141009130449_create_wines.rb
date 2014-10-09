class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :producer
      t.string :grape
      t.string :country
      t.string :region
      t.string :vintage
      t.string :price
      t.string :alcohol_percentage

      t.timestamps
    end
  end
end
