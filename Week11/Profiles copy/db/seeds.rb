# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
array = ["5af9b815ac161c052d108b5f", "5af9b7d9ac161c052d108b5d", "5af9b86eac161c052d108b62", "5af9b84dac161c052d108b61", "5af9b7f9ac161c052d108b5e", "5af9b795ac161c052d108b5b", "5af9b7b9ac161c052d108b5c", "5af9b832ac161c052d108b60"]

array2 = ["Anne Cooke", "Sebastian Lewis", "Pawan Kumar", "Shaun Scott", "Joseph Cheung", "Ali Karami", "Toweka Malcolm", "Steven Besal"]

array3 = ["SDET","DevOps","BA Test Analyst"]

for i in 0..7
  Profile.create(
    summary: Faker::Lorem.paragraph,
    degree: Faker::Job.field,
    user_id: array[i],
    stream: array3[rand(2)],
    name: array2[i],
    status: "Pending",
    approved_by: "",
    email: "#{(array2[i].partition(" ").first[0,1]).downcase}#{(array2[i].partition(" ").last).downcase}@spartaglobal.com"
  )
  Profile.create(
    summary: Faker::Lorem.paragraph,
    degree: Faker::Job.field,
    user_id: array[i],
    stream: array3[rand(2)],
    name: array2[i],
    status: "Draft",
    approved_by: ""
  )
  Project.create(
    title: "Project 1",
    description: Faker::Hobbit.quote,
    user_id: array[i]
  )
  Employment.create(
    start_date: 5.years.ago,
    end_date: 4.years.ago,
    company: Faker::Company.name,
    role: Faker::Company.profession,
    description: Faker::Hobbit.quote,
    user_id: array[i]
  )
  Education.create(
    start_date: 6.years.ago,
    end_date: 5.years.ago,
    institution: Faker::University.name,
    course: Faker::Job.field,
    description: Faker::Hobbit.quote,
    user_id: array[i]
  )
  Certification.create(
    title: Faker::Job.education_level,
    description: Faker::Hobbit.quote,
    user_id: array[i]
  )
  Custom.create(
    title: Faker::Pokemon.move,
    heading: Faker::Job.field,
    body: Faker::TheFreshPrinceOfBelAir.quote,
    user_id: array[i]
  )
end

Section.create(
  title: "Business Skills",
  description: "A continuous development that explores the world of business and projects therein. A focus on understanding their role within organisations and communicating effectively with the people around them",
  skills: "Effective communication, networking, negotiation, project life-cycles, development life-cycles, time and task management, stakeholder analysis/management, memory techniques, network diagrams, WBS and dependencies, presentation skills."
)
Section.create(
  title: "SOFTWARE TESTING",
  description: "Spartans are pushed to become diverse testers with a wide breadth of competencies across traditional and modern projects in real world scenarios.",
  skills: "Developing and managing test cases and strategies, test design, structured exploratory/session/ risk/functional/usability/performance-based testing, black box/white box techniques, JMeter, defect management, root cause analysis, Jira."
)
Section.create(
  title: "AUTOMATION",
  description: "Combining a testers mind with a developers’ skill-set, this is not just theory - labs and drills are run regularly on real life projects to build confidence ready for work on client-site.",
  skills: "Cucumber, Capybara, Watir, Gherkin, Selenium Web-driver IDE, BDD, TDD, specification by example, RSpec, SBE, features and scenarios, writing features, page and data models, page objects."
)
Section.create(
  title: "WEB TECHNOLOGY",
  description: "A mixture of fundamental to advanced skills where they learn to develop websites and test them using a wide range of technologies within self-generated projects.",
  skills: "BASH, HTML & CSS, JSON, XML, JavaScript, debugging and tools, Text Editors, Web Inspectors, Git and Github, Fundamentals of Testing, RESTful APIs, information architecture, accessibility, Responsive CSS, CSS Frameworks, The DOM, JQuery, AJAX."
)

Tokenurl.create(
  token: "123124",
  profile_id: 2
)

Tokenurl.create(
  token: "shaunlovestokens",
  profile_id: 5
)
