class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :deadline
      t.boolean :done, null: false, default: false

      t.timestamps
    end
  end
end
