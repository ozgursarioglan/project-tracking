class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :company
      t.integer :progress,                        default: "0"
      t.string :status
      t.datetime :startingdate
      t.datetime :enddate
      t.references :manager, foreign_key: true

      t.timestamps
    end
  end
end
