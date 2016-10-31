class CreateOpenings < ActiveRecord::Migration[5.0]
  def change
    create_table :openings do |t|
      t.string :opening_name
      t.string :skills
      t.string :education
      t.integer :years_exp
      t.boolean :local 
    end
  end
end
