class AddFullNameColumnToRepo < ActiveRecord::Migration
  def change
    add_column :repo, :full_name, :string
  end
end
