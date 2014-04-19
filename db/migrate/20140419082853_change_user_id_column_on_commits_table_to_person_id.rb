class ChangeUserIdColumnOnCommitsTableToPersonId < ActiveRecord::Migration
  def change
    remove_column :commits, :user_id
    add_column :commits, :person_id, :integer
  end
end
