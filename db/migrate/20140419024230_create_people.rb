class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.belongs_to :organization
      t.string :handle

      t.timestamps
    end
  end
end
