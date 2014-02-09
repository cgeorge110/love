class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :to
      t.string :to_email
      t.string :from
      t.string :from_email
      t.integer :note_id

      t.timestamps
    end
  end
end
