class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string      :topic
      t.references  :theme, foreign_key: true
      t.integer    :start_time
      t.integer    :stop_time
      t.timestamps
    end
  end
end
