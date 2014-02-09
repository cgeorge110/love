class UpdateEmailerColumnNames < ActiveRecord::Migration
  def change
  	rename_column :emails, :to_email, :getter_email
  	rename_column :emails, :from_email, :sender_email
  end
end
