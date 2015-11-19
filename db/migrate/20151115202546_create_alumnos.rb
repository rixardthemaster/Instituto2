class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :nombreal
      t.string :appal

      t.timestamps null: false
    end
  end
end
