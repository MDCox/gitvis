class CreateRepos < ActiveRecord::Migration
  def change
    create_table :repos do |t|
      t.integer :person_id

      t.string :name
      t.string :description
      t.string :language
      t.string :url

      t.timestamps
    end
  end
end
