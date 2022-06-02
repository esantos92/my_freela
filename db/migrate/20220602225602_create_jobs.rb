class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.text :name
      t.int :daily_hours
      t.int :total_hours
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
