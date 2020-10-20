class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.bigint :user_id, null: false
      t.date :schedule_day, null: false
      t.string :company_name, null: false
      t.text :description

      t.timestamps

      t.index :user_id
    end
  end
end
