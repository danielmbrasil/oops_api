# frozen_string_literal: true

# Level 1
l1 = Level.create(level_number: 1)

a1 = Activity.create(title: 'Classes', body: 'Uma classe é uma maneira de definir um tipo em uma
                    linguagem orientada a objetos. Ela é composta do dados (atributos) e comportamentos
                      (métodos).', xp: 90, level_id: l1.id)

q1 = Quiz.create(quiz_number: 1, activity_id: a1.id)

# Questões do nível 1
Question.create(question_number: 1, title: 'Operador ponto é usado quando acessamos membros de uma classe por intermédio de um objeto.',
                question_type: 1, correct_answer: 'A', option_a: 'Verdadeiro', option_b: 'Falso', xp: 5, quiz_id: q1.id)

Question.create(question_number: 2, title: '____________ é um modelo que define a forma de um objeto.', question_type: 2, 
                correct_answer: 'B', quiz_id: q1.id, option_a: 'Método.', option_b: 'Classe.', option_c: 'Construtor.', option_d: 'Interface.', xp: 10)

Question.create(question_number: 3, title: 'Uma classe é uma _________. Ao criar um objeto dessa classe passa a existir uma representação física dela na memória.', 
                question_type: 2, correct_answer: 'C', quiz_id: q1.id, option_a: 'Concretização.', option_b: 'Representação.', 
                option_c: 'Abstração.', option_d: 'Visualização.', xp: 10)

Question.create(question_number: 4, title: 'Um objeto é uma ____________ de uma classe.', 
                question_type: 2, correct_answer: 'B', quiz_id: q1.id, option_a: 'Referência.', option_b: 'Instância.', 
                option_c: 'Informação.', option_d: 'Abstração.', xp: 10)

Question.create(question_number: 5, title: 'Os dois elementos que uma classe contém são código e dados.',
                question_type: 1, correct_answer: 'A', option_a: 'Verdadeiro', option_b: 'Falso', xp: 5, quiz_id: q1.id)

Question.create(question_number: 6, title: 'Os métodos e atributos de uma classe são chamados de ________ uma classe.', 
                question_type: 2, correct_answer: 'A', quiz_id: q1.id, option_a: 'Membros.', option_b: 'Valores.', 
                option_c: 'Objetos.', option_d: 'Corpos.', xp: 10)

Question.create(question_number: 7, title: 'Uma classe bem projetada deve agrupar informações logicamente ________.', 
                question_type: 2, correct_answer: 'C', quiz_id: q1.id, option_a: 'Compactadas.', option_b: 'Armazenadas.', 
                option_c: 'Conectadas.', option_d: 'Construídas.', xp: 10)
              
Question.create(question_number: 8, title: 'A _________ de informações não relacionadas na mesma classe desestruturá o código.', 
                question_type: 2, correct_answer: 'B', quiz_id: q1.id, option_a: 'Modificação.', option_b: 'Inserção.', 
                option_c: 'Alteração.', option_d: 'Exclusão.', xp: 10)

Question.create(question_number: 9, title: 'Em uma operação de atribuição, variáveis de referência agem de modo igual à atribuição de variáveis de tipos  primitivos.',
                  question_type: 1, correct_answer: 'B', option_a: 'Verdadeiro', option_b: 'Falso', xp: 5, quiz_id: q1.id)

Question.create(question_number: 10, title: 'Um objeto possui suas próprias cópias de ________ definidas numa classe.', 
                    question_type: 2, correct_answer: 'B', quiz_id: q1.id, option_a: 'Métodos.', option_b: 'Atributos.', 
                    option_c: 'Construtores.', option_d: 'Visualizações.', xp: 10)

Question.create(question_number: 11, title: 'Quando uma variável de referência é atribuída a outra variável de referência, as duas variáveis referenciam o mesmo objeto. Não é feita uma cópia do objeto.',
                      question_type: 1, correct_answer: 'A', option_a: 'Verdadeiro', option_b: 'Falso', xp: 5, quiz_id: q1.id)
