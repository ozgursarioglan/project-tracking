class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :name
      t.string :email
      t.string :url
      t.string :home

      t.timestamps
    end
  end
end
