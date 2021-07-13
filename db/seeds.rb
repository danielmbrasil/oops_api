# frozen_string_literal: true

# Level 1
l1 = Level.create(level_number: 1)

a1 = Activity.create(title: 'Introdução 1', body: 'Nível um Introdução', xp: 50, level_id: l1.id)

q1 = Quiz.create(quiz_number: 1, activity_id: a1.id)

(0..5).each do |i|
  if i.even?
    Question.create(question_number: i + 1, title: 'Questão V ou F',question_type: 1, correct_answer: i.even? ? 'A' : 'B',
                    option_a: 'Opção a', option_b: 'Opção b', xp: 10, quiz_id: q1.id)
  else
    Question.create(question_number: i + 1, title: 'Questão de múltipla escolha', question_type: 2, correct_answer: if i.even?
                                                                                'A'
                                                                              elsif i.multiple_of?(3)
                                                                                'B'
                                                                              else
                                                                                i.multiple_of?(5) ? 'C' : 'D'
                                                                              end, quiz_id: q1.id,
                    option_a: 'Opção a', option_b: 'Opção b', option_c: 'Opção C', option_d: 'Opção D', xp: 10)
  end
end

# Level 2
l2 = Level.create(level_number: 2)

a2 = Activity.create(title: 'Introdução 2', body: 'Nível dois Introdução', xp: 60, level_id: l2.id)

q2 = Quiz.create(quiz_number: 2, activity_id: a2.id)

(0..6).each do |i|
  if i.even?
    Question.create(question_number: i + 1, title: 'Questão V ou F', question_type: 1, correct_answer: i.even? ? 'A' : 'B',
                    option_a: 'Opção a', option_b: 'Opção b', xp: 10, quiz_id: q2.id)
  else
    Question.create(question_number: i + 1, title: 'Questão de múltipla escolha', question_type: 2, correct_answer: if i.even?
                                                                                'A'
                                                                              elsif i.multiple_of?(3)
                                                                                'B'
                                                                              else
                                                                                i.multiple_of?(5) ? 'C' : 'D'
                                                                              end, quiz_id: q2.id,
                    option_a: 'Opção a', option_b: 'Opção b', option_c: 'Opção C', option_d: 'Opção D', xp: 10)
  end
end

# Level 3
l3 = Level.create(level_number: 3)

a3 = Activity.create(title: 'Introdução 3', body: 'Nível três Introdução', xp: 100, level_id: l3.id)

q3 = Quiz.create(quiz_number: 3, activity_id: a3.id)

(0..10).each do |i|
  if i.even?
    Question.create(question_number: i + 1, title: 'Questão V ou F', question_type: 1, correct_answer: i.even? ? 'A' : 'B',
                    option_a: 'Opção a', option_b: 'Opção b', xp: 10, quiz_id: q3.id)
  else
    Question.create(question_number: i + 1, title: 'Questão de múltipla escolha', question_type: 2, correct_answer: if i.even?
                                                                                'A'
                                                                              elsif i.multiple_of?(3)
                                                                                'B'
                                                                              else
                                                                                i.multiple_of?(5) ? 'C' : 'D'
                                                                              end, quiz_id: q3.id,
                    option_a: 'Opção a', option_b: 'Opção b', option_c: 'Opção C', option_d: 'Opção D', xp: 10)
  end
end

# Level 4
l4 = Level.create(level_number: 4)

a4 = Activity.create(title: 'Introdução 4', body: 'Nível quatro Introdução', xp: 150, level_id: l4.id)

q4 = Quiz.create(quiz_number: 4, activity_id: a4.id)

(0..10).each do |i|
  if i.even?
    Question.create(question_number: i + 1, title: 'Questão V ou F', question_type: 1, correct_answer: i.even? ? 'A' : 'B',
                    option_a: 'Opção a', option_b: 'Opção b', xp: 10, quiz_id: q4.id)
  else
    Question.create(question_number: i + 1, title: 'Questão de múltipla escolha', question_type: 2, correct_answer: if i.even?
                                                                                'A'
                                                                              elsif i.multiple_of?(3)
                                                                                'B'
                                                                              else
                                                                                i.multiple_of?(5) ? 'C' : 'D'
                                                                              end, quiz_id: q4.id,
                    option_a: 'Opção a', option_b: 'Opção b', option_c: 'Opção C', option_d: 'Opção D', xp: 20)
  end
end
