class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :wine_id
      t.integer :user_id
      t.text :see
      t.text :smell
      t.text :swirl
      t.text :sip
      t.text :swallow
      t.text :savor

      t.timestamps
    end
  end
end
