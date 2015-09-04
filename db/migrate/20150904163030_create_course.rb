class CreateCourse < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, limit: 45, null: false
      t.string :description, limit: 45, null: false
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
