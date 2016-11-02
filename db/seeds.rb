Opening.delete_all
Applicant.delete_all

full_stack_developer = Opening.create!({
  opening_name: "Full Stack Developer",
  skills: ["JavaScript", "Rails"],
  education: "Bachelors Degree",
  years_exp: 5,
})

first_applicant = Applicant.create!({
  name: "Bruce Wayne",
  skills: ["JavaScript", "PHP"],
  education: "Bachelors Degree",
  years_exp: 12,
})

combine = OpeningsApplicant.create!({
  opening: full_stack_developer,
  applicant: first_applicant
})