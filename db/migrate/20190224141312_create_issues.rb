class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.string :title
      t.text :description
      t.string :status
      t.string :category
      t.string :itype
      t.bigint :project, foreign_key: true
      t.string :priority
      t.string :department
      t.boolean :isprivate
      t.bigint :assignedby_id, foreign_key: true
      t.bigint :openedby_id, foreign_key: true
      t.datetime :openeddate
      t.bigint :closedby_id, foreign_key: true
      t.datetime :closeddate
      t.datetime :deadline

      t.timestamps
    end
  end
end
