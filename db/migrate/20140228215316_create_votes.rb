class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :user
      t.references :story
      t.integer :score
      t.timestamps
    end
  end
end
