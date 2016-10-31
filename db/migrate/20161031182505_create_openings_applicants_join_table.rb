class CreateOpeningsApplicantsJoinTable < ActiveRecord::Migration[5.0]
  def change
      create_table :openings_applicants, id: false do |t|
        t.integer :opening_id
        t.integer :applicant_id
      end
  
      add_index :openings_applicants, :opening_id
      add_index :openings_applicants, :applicant_id
    end
  end
end
