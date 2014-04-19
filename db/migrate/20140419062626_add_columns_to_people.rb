class AddColumnsToPeople < ActiveRecord::Migration
  def change
    add_column :people, :avatar_url ,:string
    add_column :people, :name, :string
    add_column :people, :company, :string
    add_column :people, :email, :string
    add_column :people, :location, :string
    add_column :people, :bio, :text
  end
end
