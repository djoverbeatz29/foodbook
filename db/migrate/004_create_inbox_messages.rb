class CreateInboxMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :inbox_messages do |t|
      t.string :subject
      t.boolean :read
      t.boolean :starred
      t.references :user, null: false, foreign_key: true
      t.text :labels, array: true, default: []

      t.timestamps
    end
  end
end