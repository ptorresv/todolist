class Tasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :dateFinish, :datetime
  end
end
