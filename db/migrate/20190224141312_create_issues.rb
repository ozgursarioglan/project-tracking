class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.string :title
      t.text :description
      t.string :status
      t.string :category
      t.string :itype
      t.references :project, foreign_key: true
      t.string :priority
      t.string :department
      t.boolean :isprivate
      t.references :assignedby, foreign_key: true
      t.references :openedby, foreign_key: true
      t.datetime :openeddate
      t.references :closedby, foreign_key: true
      t.datetime :closeddate
      t.datetime :deadline

      t.timestamps
    end
  end
end
