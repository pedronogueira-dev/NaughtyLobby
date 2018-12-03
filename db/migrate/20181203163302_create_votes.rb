class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.boolean :position
      t.string :subject
      t.references :user, foreign_key: true
      t.references :politician, foreign_key: true

      t.timestamps
    end
  end
end
