class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :level
      t.string :sublevel

      t.timestamps
    end
  end
end
