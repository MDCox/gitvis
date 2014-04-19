class CreateCommits < ActiveRecord::Migration
  def change
    create_table :commits do |t|
      t.belongs_to :repo
      t.belongs_to :user

      t.string :author
      t.datetime :date
      t.string :message

      t.timestamps
    end
  end
end
