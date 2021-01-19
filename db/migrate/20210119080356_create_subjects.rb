class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string      :topic
      t.references  :theme, foreign_key: true
      t.timestamps
    end
  end
end
