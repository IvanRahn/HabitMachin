class RemoveHFromLogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :logs, :h1, :text
  end
end
