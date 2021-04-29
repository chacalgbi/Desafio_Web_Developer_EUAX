class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :description
      t.date :start_date
      t.date :end_date
      t.boolean :finished
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
