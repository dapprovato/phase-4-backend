class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :content
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
  end
end