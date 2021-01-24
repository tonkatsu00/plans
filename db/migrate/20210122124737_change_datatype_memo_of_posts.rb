class ChangeDatatypeMemoOfPosts < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :memo, :text
  end
end
