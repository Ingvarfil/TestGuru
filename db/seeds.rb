# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create!([{ title: 'HTML' }, { title: 'CSS' }, { title: 'JS' }, { title: 'Ruby' }])

users = User.create!(
  [
    { name: 'Jon', email: 'cisco@gmail.com' },
    { name: 'Ann', email: 'ann@gmail.com' },
    { name: 'Mikle', email: 'white@ya.ru' },
    { name: 'Alex', email: 'alex@mail.ru' }
  ]
)

tests = Test.create!(
  [
    { title: 'Basics HTML', level: 0, category_id: categories[0].id, author_id: users[0].id },
    { title: 'Basics CSS', level: 0, category_id: categories[1].id, author_id: users[0].id },
    { title: 'Basics JS', level: 1, category_id: categories[2].id, author_id: users[2].id },
    { title: 'Basics Ruby', level: 2, category_id: categories[3].id, author_id: users[3].id },
  ]
)

questions = Question.create!(
  [
    { body: 'The purpose of the <a> tag?', test_id: tests[0].id },
    { body: 'The purpose of the <br> tag?', test_id: tests[0].id },
    { body: 'The purpose of the <em> tag?', test_id: tests[0].id },
    { body: 'Applying a selector min-width.', test_id: tests[1].id },
    { body: 'The CSS selector margin.', test_id: tests[1].id },
    { body: 'The CSS selector padding.', test_id: tests[1].id },
    { body: 'Write an increment operator.', test_id: tests[2].id },
    { body: 'What will the function return [23, 16, 1, 2, 10, 11, 6, 8].sort()', test_id: tests[2].id },
    { body: 'How to connect JS?', test_id: tests[2].id },
    { body: 'What is this: FOOVAR', test_id: tests[3].id },
    { body: 'Which function is displayed on the screen without a line break at the end of the output?', test_id: tests[3].id },
    { body: 'Short form a = a / 3', test_id: tests[3].id }
  ]
)

Answer.create!(
  [
    { body: 'The <a> tag is for italicizing text.', correct: false, question_id: questions[0].id },
    { body: 'The <a> highlights text with an underline.', correct: false, question_id: questions[0].id },
    { body: 'The <a> tag is for creating links.', correct: true, question_id: questions[0].id },
    { body: 'The <br> draws a horizontal line.', correct: false, question_id: questions[1].id },
    { body: 'The <br> element sets a newline.', correct: true, question_id: questions[1].id },
    { body: 'The <br> tag is for italicizing text.', correct: false, question_id: questions[1].id },
    { body: 'The <em> element sets a newline.', correct: false, question_id: questions[2].id },
    { body: 'The <em> tag is for italicizing text.', correct: true, question_id: questions[2].id },
    { body: 'The <em>  tag is for creating links.', correct: false, question_id: questions[2].id },
    { body: 'To set the minimum document width.', correct: false, question_id: questions[3].id },
    { body: 'To set the maximum width of an element.', correct: false, question_id: questions[3].id },
    { body: 'To set the minimum width of an element.', correct: true, question_id: questions[3].id },
    { body: 'The CSS margin property is deprecated.', correct: false, question_id: questions[4].id },
    { body: 'The margin value cannot be a negative number.', correct: false, question_id: questions[4].id },
    { body: 'The margin CSS property defines the margin.', correct: true, question_id: questions[4].id },
    { body: 'The padding property is inherited.', correct: false, question_id: questions[5].id },
    { body: 'The padding property sets padding on all sides of an element.', correct: true, question_id: questions[5].id },
    { body: 'It is allowed to use one, two, three or four values separated by commas.', correct: false, question_id: questions[5].id },
    { body: 'The increment operator ++ .', correct: true, question_id: questions[6].id },
    { body: 'The increment operator =+ .', correct: false, question_id: questions[6].id },
    { body: 'The increment operator += .', correct: false, question_id: questions[6].id },
    { body: '[1, 2, 6, 8, 10, 11, 16, 23]', correct: false, question_id: questions[7].id },
    { body: '[1, 10, 11, 16, 2, 23, 6, 8]', correct: true, question_id: questions[7].id },
    { body: '[1, 10, 11, 16, 2, 6, 8, 23]', correct: false, question_id: questions[7].id },
    { body: 'The JS connected with tag <style>.', correct: false, question_id: questions[8].id },
    { body: 'The JS connected with tag <script>.', correct: true, question_id: questions[8].id },
    { body: 'The JS connected with tag <jscript>.', correct: false, question_id: questions[8].id },
    { body: 'This is a constant FOOVAR.', correct: true, question_id: questions[9].id },
    { body: 'This is a global variable FOOVAR.', correct: false, question_id: questions[9].id },
    { body: 'This is an instance variable FOOVAR.', correct: false, question_id: questions[9].id },
    { body: 'pp', correct: false, question_id: questions[10].id },
    { body: 'puts', correct: false, question_id: questions[10].id },
    { body: 'print', correct: true, question_id: questions[10].id },
    { body: 'a =\ 3', correct: false, question_id: questions[11].id },
    { body: 'a/3', correct: false, question_id: questions[11].id },
    { body: 'a /= 3', correct: true, question_id: questions[11].id }
  ]
)

Result.create!(
  [
    { user_id: users[0].id, test_id: tests[0].id },
    { user_id: users[3].id, test_id: tests[1].id },
    { user_id: users[2].id, test_id: tests[2].id },
    { user_id: users[1].id, test_id: tests[3].id }
  ]
)
