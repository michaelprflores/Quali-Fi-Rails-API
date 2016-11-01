class Applicant < ActiveRecord::Base
  has_many :openings_applicants
  has_many :openings, through: :openings_applicants
end