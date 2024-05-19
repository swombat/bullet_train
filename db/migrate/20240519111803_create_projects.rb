class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.references :team, null: false, foreign_key: true
      t.integer :sort_order
      t.string :name

      t.timestamps
    end
  end
end
