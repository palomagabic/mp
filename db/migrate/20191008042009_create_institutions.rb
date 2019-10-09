class CreateInstitutions < ActiveRecord::Migration[5.2]
  def change
    create_table :institutions do |t|
      t.string :name
      t.date :pay
      t.boolean :active

      t.timestamps
    end
  end
end
