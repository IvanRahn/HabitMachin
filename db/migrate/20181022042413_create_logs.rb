class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.date :date
      t.references :user, foreign_key: true
      t.text :h1
      t.text :h2
      t.text :h3
      t.text :h4
      t.time :waking_time
      t.time :sleep_time
      t.text :image
      t.string :content

      t.timestamps
    end
  end
end
