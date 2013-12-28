class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.belongs_to :teacher

      t.timestamps
    end
  end
end
