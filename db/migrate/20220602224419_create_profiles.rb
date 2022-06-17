class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.float :monthly_budget
      t.float :value_hour
      t.integer :days_per_week
      t.integer :hours_per_day
      t.text :github_profile

      t.timestamps
    end
  end
end
