# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

u1 = User.create!(username: 'abc')
u2 = User.create!(username: '123')
u3 = User.create!(username: '456')
u4 = User.create!(username: '789')

Poll.destroy_all

p1 = Poll.create!(author_id: u1.id, title: "Poll 1")
p2 = Poll.create!(author_id: u1.id, title: "Poll 2")
p3 = Poll.create!(author_id: u2.id, title: "Poll 3")
p4 = Poll.create!(author_id: u3.id, title: "Poll 4")

Question.destroy_all

q1 = Question.create!(text: "This is a question1?", poll_id: p1.id)
q2 = Question.create!(text: "This is a question2?", poll_id: p1.id)
q3 = Question.create!(text: "This is a question3?", poll_id: p2.id)
q4 = Question.create!(text: "This is a question4?", poll_id: p2.id)
q5 = Question.create!(text: "This is a question5?", poll_id: p3.id)
q6 = Question.create!(text: "This is a question6?", poll_id: p4.id)

Answerchoice.destroy_all

a1 = Answerchoice.create!(question_id: q1.id, answer_text: "Answer 1")
a2 = Answerchoice.create!(question_id: q1.id, answer_text: "Answer 2")
a3 = Answerchoice.create!(question_id: q2.id, answer_text: "Answer 1")
a4 = Answerchoice.create!(question_id: q3.id, answer_text: "Answer 1")
a5 = Answerchoice.create!(question_id: q4.id, answer_text: "Answer 1")

Response.destroy_all

r2 = Response.create!(answer_choice_id: a2.id, respondent_id: u1.id)
r1 = Response.create!(answer_choice_id: a1.id, respondent_id: u2.id)
