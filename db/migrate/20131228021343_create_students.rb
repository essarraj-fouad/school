class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :period
      t.belongs_to :classroom

      t.timestamps
    end
  end
end
