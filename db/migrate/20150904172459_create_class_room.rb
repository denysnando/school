class CreateClassRoom < ActiveRecord::Migration
  def change
    create_table :class_rooms do |t|
      t.belongs_to :student, index: true
      t.belongs_to :course, index: true
      t.datetime :entry_at
    end
  end
end
