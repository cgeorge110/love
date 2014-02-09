class AddMessageIdToNotes < ActiveRecord::Migration
  def change
  	add_column :notes, :message_id, :integer
  end
end
