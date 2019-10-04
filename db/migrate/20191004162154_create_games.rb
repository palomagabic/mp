class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :description
      t.integer :execution
      t.string :type
      t.string :route
      t.boolean :available
      t.date :creation

      t.timestamps
    end
  end
end
