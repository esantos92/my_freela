class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.text :name
      t.integer :daily_hours
      t.integer :total_hours
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
