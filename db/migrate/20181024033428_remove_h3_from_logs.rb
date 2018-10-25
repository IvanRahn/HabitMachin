class RemoveH3FromLogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :logs, :h3
  end
end
