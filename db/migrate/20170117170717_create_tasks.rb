class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.date :deadline

      t.timestamps
    end
  end
end
