class CreateProfesors < ActiveRecord::Migration
  def change
    create_table :profesors do |t|
      t.string :nombreprof
      t.string :approf
      t.string :correo
      t.references :especialidad, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
