# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create!([{title: 'HTML'}, {title: 'CSS'}, {title: 'JS'}, {title: 'Ruby'}])

users = User.create!(
  [
    {name: 'Jon', email: 'cisco@gmail.com'},
    {name: 'Ann', email: 'ann@gmail.com'},
    {name: 'Mikle', email: 'white@ya.ru'},
    {name: 'Alex', email: 'alex@mail.ru'}
  ]
)

tests = Test.create!(
  [
    {title: 'Basics HTML', level: 0, category_id: categories[0].id, author_id: users[0].id},
    {title: 'Basics CSS', level: 0, category_id: categories[1].id, author_id: users[0].id},
    {title: 'Basics JS', level: 1, category_id: categories[2].id, author_id: users[2].id},
    {title: 'Basics Ruby', level: 2, category_id: categories[3].id, author_id: users[3].id},
    {title: 'Advanced HTML', level: 1, category_id: categories[0].id, author_id: users[1].id},
    {title: 'Advanced CSS', level: 1, category_id: categories[1].id, author_id: users[1].id},
    {title: 'Advanced JS', level: 2, category_id: categories[2].id, author_id: users[2].id},
    {title: 'Advanced Ruby', level: 3, category_id: categories[3].id, author_id: users[3].id}
  ]
)

questions = Question.create!(
  [
    {body: 'The purpose of the <a> tag?', test_id: tests[0].id},
    {body: 'Applying a selector min-width.', test_id: tests[1].id},
    {body: 'Write an increment operator.', test_id: tests[2].id},
    {body: 'Which function is displayed on the screen without a line break at the end of the output?', test_id: tests[3].id},
    {body: 'What element is the paragraph tag?', test_id: tests[4].id},
    {body: 'Applying an attribute !important', test_id: tests[5].id},
    {body: 'How to connect JS?', test_id: tests[6].id},
    {body: 'Short form a = a / 3', test_id: tests[7].id}
  ]
)

answers = Answer.create!(
  [
    {body: 'The <a> tag is for italicizing text.', correct: false, question_id: questions[0].id},
    {body: 'The <a> tag is for creating links.', correct: true, question_id: questions[0].id},
    {body: 'Limits the width of the site.', correct: false, question_id: questions[1].id},
    {body: 'Sets the minimum width of an element', correct: true, question_id: questions[1].id},
    {body: 'The increment operator --', correct: false, question_id: questions[2].id},
    {body: 'The increment operator ++', correct: true, question_id: questions[2].id},
    {body: 'This is a function puts.', correct: false, question_id: questions[3].id},
    {body: 'This is a function print.', correct: true, question_id: questions[3].id},
    {body: 'It is a inline element.', correct: false, question_id: questions[4].id},
    {body: 'It is a block element.', correct: true, question_id: questions[4].id},
    {body: 'Cancels the style.', correct: false, question_id: questions[5].id},
    {body: 'Allows you to increase the priority of the style.', correct: true, question_id: questions[5].id},
    {body: 'The JS connected with tag <style>', correct: false, question_id: questions[6].id},
    {body: 'The JS connected with tag <script>', correct: true, question_id: questions[6].id},
    {body: 'x/3', correct: false, question_id: questions[7].id},
    {body: 'x /= 3', correct: true, question_id: questions[7].id}
  ]
)

results = Result.create!(
  [
    {user_id: users[0].id, test_id: tests[0].id},
    {user_id: users[1].id, test_id: tests[1].id},
    {user_id: users[2].id, test_id: tests[2].id},
    {user_id: users[3].id, test_id: tests[3].id},
    {user_id: users[3].id, test_id: tests[7].id},
    {user_id: users[1].id, test_id: tests[4].id},
    {user_id: users[0].id, test_id: tests[5].id}
  ]
)
