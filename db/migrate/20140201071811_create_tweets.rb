class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :note_id
      t.string :to
      t.string :from

      t.timestamps
    end
  end
end
