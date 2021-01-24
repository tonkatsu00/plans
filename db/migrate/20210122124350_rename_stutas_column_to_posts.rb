class RenameStutasColumnToPosts < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :stutas, :memo
  end
end
