class OpeningsApplicant < ActiveRecord::Base
  belongs_to :opening
  belongs_to :applicant
end