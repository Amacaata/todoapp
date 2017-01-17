class CreateAllocatedTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :allocated_times do |t|
      t.references :task, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :done
      t.datetime :start
      t.datetime :end
      t.text :notes

      t.timestamps
    end
  end
end
