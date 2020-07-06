class CreateForumThreads < ActiveRecord::Migration[6.0]
  def change
    create_table :forum_threads do |t|
      t.string :title
      t.references :forum, null: false, foreign_key: true

      t.timestamps
    end
  end
end
