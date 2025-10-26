class CreateTasks < ActiveRecord::Migration[8.1]
  def change
    create_table :tasks do |t|
      t.string :task
      t.datetime :finished_at

      t.timestamps
    end
  end
end
