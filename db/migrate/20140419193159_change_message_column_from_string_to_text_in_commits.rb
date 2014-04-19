class ChangeMessageColumnFromStringToTextInCommits < ActiveRecord::Migration
  def change
  	remove_column :commits, :message
  	add_column :commits, :message, :text
  end
end
