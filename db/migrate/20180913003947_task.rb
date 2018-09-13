class Task < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :dateStart, :datetime
    add_column :tasks, :dateStop, :datetime
    add_column :tasks, :resposable, :string
    add_column :tasks, :estado, :string
  end
end
