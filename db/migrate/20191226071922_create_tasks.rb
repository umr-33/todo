class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.boolean :finished

      t.timestamps
    end
  end
end
