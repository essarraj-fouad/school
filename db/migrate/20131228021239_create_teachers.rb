class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.belongs_to :classroom

      t.timestamps
    end
  end
end
