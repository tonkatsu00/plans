class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string      :title,      null: false
      t.date        :due_date,   null: false
      t.string      :stutas,     null: false
      t.references  :users,      null: false, foreign_key: true
      t.timestamps
    end
  end
end
