class CreateApplicants < ActiveRecord::Migration[5.0]
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :skills
      t.string :education
      t.integer :years_exp
      t.boolean :local
    end
  end
end
