class CreateSubTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_tasks do |t|
      t.string      :task,      null: false
      t.datetime    :due_date,   null: false
      t.references  :posts,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
