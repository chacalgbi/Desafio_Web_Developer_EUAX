# frozen_string_literal: true

class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :description
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
