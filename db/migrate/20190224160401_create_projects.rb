class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :company
      t.references :manager, foreign_key: true

      t.timestamps
    end
  end
end
