class AddFieldsToMessages < ActiveRecord::Migration
  def change
  	add_column :messages, :fields, :text
  end
end
