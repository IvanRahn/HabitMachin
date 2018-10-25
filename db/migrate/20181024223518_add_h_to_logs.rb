class AddHToLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :logs, :h1, :string
    add_column :logs, :h2, :string
    add_column :logs, :h3, :string
    add_column :logs, :h4, :string
    add_column :logs, :h5, :string
    add_column :logs, :h6, :string
    add_column :logs, :h7, :string
    add_column :logs, :h8, :string
    add_column :logs, :h9, :string
    add_column :logs, :h10, :string
    add_column :logs, :h11, :string
    add_column :logs, :h12, :string
  end
end
