class CreateProjectsWidgets < ActiveRecord::Migration[7.1]
  def change
    create_table :projects_widgets do |t|
      t.references :project, null: false, foreign_key: true
      t.integer :sort_order
      t.string :name

      t.timestamps
    end
  end
end
