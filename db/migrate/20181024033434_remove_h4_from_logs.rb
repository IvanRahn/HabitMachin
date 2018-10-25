class RemoveH4FromLogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :logs, :h4
  end
end
