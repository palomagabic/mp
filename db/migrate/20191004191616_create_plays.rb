class CreatePlays < ActiveRecord::Migration[5.2]
  def change
    create_table :plays do |t|
      t.integer :level
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true
      t.integer :state

      t.timestamps
    end
  end
end
