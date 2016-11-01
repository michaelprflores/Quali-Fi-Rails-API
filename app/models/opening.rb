class Opening < ActiveRecord::Base
  has_many :openings_applicants
  has_many :applicants, through: :openings_applicants
end