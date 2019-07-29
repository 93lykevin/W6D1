# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all

User.create(username: 'Harry Pottery')
User.create(username: 'Luna Lovegood')
User.create(username: 'Hermione Danger')
User.create(username: 'Ron Sleazy')
User.create(username: 'Draco Mouth Toy')
  
Poll.create(title: 'Loren Ipsum', user_id: 1)
Poll.create(title: 'upd8 db plz', user_id: 4)

Question.create(question: 'What is Loren Ipsum???', poll_id: 1)
Question.create(question: 'How to update a database in rails...', poll_id: 2)

AnswerChoice.create(answer: 'IDK', question_id: 1, poll_id: 1)
AnswerChoice.create(answer: 'Google It', question_id: 1, poll_id: 1)
AnswerChoice.create(answer: 'Roll it back', question_id: 2, poll_id: 2)
AnswerChoice.create(answer: 'Drop it', question_id: 2, poll_id: 2)

Response.create(response: "", user_id: 1, answer_choice_id: 4)
Response.create(response: "", user_id: 1, answer_choice_id: 2)

Response.create(response: "", user_id: 2, answer_choice_id: 1)
Response.create(response: "", user_id: 2, answer_choice_id: 3)

Response.create(response: "", user_id: 3, answer_choice_id: 1)
Response.create(response: "", user_id: 3, answer_choice_id: 4)

Response.create(response: "", user_id: 4, answer_choice_id: 2)
Response.create(response: "", user_id: 4, answer_choice_id: 3)

Response.create(response: "", user_id: 5, answer_choice_id: 1)
Response.create(response: "", user_id: 5, answer_choice_id: 3)
