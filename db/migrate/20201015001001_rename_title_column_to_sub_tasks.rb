class RenameTitleColumnToSubTasks < ActiveRecord::Migration[5.0]
  def change
    rename_column :sub_tasks, :title, :task
  end
end
