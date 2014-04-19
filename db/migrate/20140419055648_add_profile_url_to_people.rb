class AddProfileUrlToPeople < ActiveRecord::Migration
  def change
    add_column :people, :profile_url, :string
  end
end
