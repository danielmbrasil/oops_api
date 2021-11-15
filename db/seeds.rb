# frozen_string_literal: true

# Level 1
l1 = Level.create(level_number: 1)

a1 = Activity.create(title: 'Classes', body: 'Uma classe é uma maneira de definir um tipo em uma linguagem orientada a objetos. Ela é composta do dados (atributos) e comportamentos (métodos).', xp: 90, level_id: l1.id)

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

# Level 2

l2 = Level.create(level_number: 2)

a2 = Activity.create(title: 'Métodos', body: 'Um método é uma rub-rotina (função) que define o comportamento de um objeto. Métodos podem alterar o estado do objeto.', xp: 160, level_id: l2.id)

q2 = Quiz.create(quiz_number: 2, activity_id: a2.id)

# Questões do nível 2
Question.create(question_number: 1, title: 'Um método é uma sub-rotina que trata os dados definidos pela classe.',
                question_type: 1, correct_answer: 'A', option_a: 'Verdadeiro', option_b: 'Falso', xp: 10, quiz_id: q2.id)

Question.create(question_number: 2, title: 'Um método possui as instruções que definem as suas ______.', 
                question_type: 2, correct_answer: 'C', quiz_id: q2.id, option_a: 'Declarações.', option_b: 'Rotinas.', 
                option_c: 'Ações.', option_d: 'Delegações.', xp: 20)

Question.create(question_number: 3, title: 'Em um código de Programação Orientada a Objetos bem escrito, cada método executa várias tarefas.',
  question_type: 1, correct_answer: 'B', option_a: 'Verdadeiro', option_b: 'Falso', xp: 10, quiz_id: q2.id)

Question.create(question_number: 4, title: 'Cada método tem um nome, que é usado para chamar o método.',
  question_type: 1, correct_answer: 'A', option_a: 'Verdadeiro', option_b: 'Falso', xp: 10, quiz_id: q2.id)

Question.create(question_number: 5, title: 'É uma boa prática de programação atribuir qualquer nome para um método.',
  question_type: 1, correct_answer: 'B', option_a: 'Verdadeiro', option_b: 'Falso', xp: 10, quiz_id: q2.id)

Question.create(question_number: 6, title: 'É uma boa prática de programação usar nomes descritivos para métodos.',
  question_type: 1, correct_answer: 'A', option_a: 'Verdadeiro', option_b: 'Falso', xp: 10, quiz_id: q2.id)

Question.create(question_number: 7, title: 'Uma classe só de dados é válida, porém, a maioria das classes terá métodos.',
  question_type: 1, correct_answer: 'A', option_a: 'Verdadeiro', option_b: 'Falso', xp: 10, quiz_id: q2.id)

Question.create(question_number: 8, title: 'Os parâmetros de um método são basicamente variáveis que recebem o valor dos argumentos passados para o método quando ele é chamado. Se o método não tiver parâmetros a lista será vazia.',
  question_type: 1, correct_answer: 'A', option_a: 'Verdadeiro', option_b: 'Falso', xp: 10, quiz_id: q2.id)

Question.create(question_number: 9, title: 'Um método void sempre retorna um valor.',
  question_type: 1, correct_answer: 'B', option_a: 'Verdadeiro', option_b: 'Falso', xp: 10, quiz_id: q2.id)

Question.create(question_number: 10, title: 'A instrução return causa o encerramento imediato de um método void.',
  question_type: 1, correct_answer: 'A', option_a: 'Verdadeiro', option_b: 'Falso', xp: 10, quiz_id: q2.id)

Question.create(question_number: 11, title: 'Um método bem projetado tem pontos de saída bem projetados.',
                question_type: 1, correct_answer: 'A', option_a: 'Verdadeiro', option_b: 'Falso', xp: 10, quiz_id: q2.id)

Question.create(question_number: 12, title: 'Um ______ é um valor que é passado para um método quando este é chamado.', 
  question_type: 2, correct_answer: 'A', quiz_id: q2.id, option_a: 'Argumento.', option_b: 'Parâmetro.', 
  option_c: 'Atributo.', option_d: 'Comando.', xp: 20)

Question.create(question_number: 13, title: 'Um _______ é uma variável definida por um método que recebe o valor do argumento.', 
                question_type: 2, correct_answer: 'D', quiz_id: q2.id, option_a: 'Atributo.', option_b: 'Argumento.', 
                option_c: 'Comando.', option_d: 'Parâmetro.', xp: 20)

# Level 3

l3 = Level.create(level_number: 3)

a3 = Activity.create(title: 'Questões de Concursos', body: 'Este nível é composto de questões retiradas de concursos sobre POO em geral.', xp: 100, level_id: l3.id)

q3 = Quiz.create(quiz_number: 3, activity_id: a3.id)

# Questões do nível 3

Question.create(question_number: 1, title: '(Quadrix-2021-CRECI). A POO introduz a herança com a finalidade de estender objetos existentes. Ela introduz, também, o polimorfismo, que permite que o programador escreva um código genérico.',
                question_type: 1, correct_answer: 'A', option_a: 'Verdadeiro', option_b: 'Falso', xp: 20, quiz_id: q3.id)

Question.create(question_number: 2, title: '(Prefeitura de São Roque do Canaã - ES - 2020) __________ é um método chamado no momento da criação do objeto, ou seja, no momento em que é utilizado no comando new. Este método promove a inicialização do objeto, de forma que, o objetivo após essa inicialização, já se encontra logicamente consistente. Complete a lacuna com a alternativa CORRETA relacionada ao método da programação orientada à objetos.', 
  question_type: 2, correct_answer: 'B', quiz_id: q3.id, option_a: 'Destrutor.', option_b: 'Construtor.', 
  option_c: 'Atributos.', option_d: 'Público.', xp: 20)

Question.create(question_number: 3, title: '(Quadrix - 2019-CRN-9). Uma das vantagens da programação orientada a objetos é que ela diminui o tempo do ciclo de desenvolvimento, fornecendo software confiável e reutilizável.',
                question_type: 1, correct_answer: 'A', option_a: 'Verdadeiro', option_b: 'Falso', xp: 20, quiz_id: q3.id)

Question.create(question_number: 4, title: '(IDIB-2021-CRF-MS). Com relação à Orientação a Objeto, assinale a alternativa correta.', 
                question_type: 2, correct_answer: 'B', quiz_id: q3.id, option_a: 'Herança é o nome utilizado para indicar quando uma classe reimplementa o método de outra classe.', option_b: 'O polimorfismo permite que objetos distintos respondam a mesma mensagem, sendo adaptada para cada objeto.', 
                option_c: 'Uma classe é a representação dinâmica de um objeto do mundo virtual.', option_d: 'Um método abstrato possui uma implementação e é herdado pelas classes-filhas.', xp: 20)
              
Question.create(question_number: 5, title: '(IFPI-2016). Assinale a alternativa que, na programação orientada a objetos, representa a característica que permite prover uma única interface a entidades de diferentes tipos.', 
                question_type: 2, correct_answer: 'C', quiz_id: q3.id, option_a: 'Herança.', option_b: 'Encapsulamento.', 
                option_c: 'Polimorfismo.', option_d: 'Acoplamento.', xp: 20)

# Level 4

l4 = Level.create(level_number: 4)

a4 = Activity.create(title: 'Questões de Concursos', body: 'Este nível é composto de questões retiradas de concursos sobre POO em geral.', xp: 100, level_id: l4.id)

q4 = Quiz.create(quiz_number: 4, activity_id: a4.id)

# Questões do nível 4
Question.create(question_number: 1, title: '(VUNESP-2021) Em programação orientada a objetos, métodos de acesso do tipo setter têm a finalidade primária de:', 
                question_type: 2, correct_answer: 'B', quiz_id: q4.id, option_a: 'obter o valor de um atributo.', option_b: 'modificar o valor de um atributo.', 
                option_c: 'inicializar os valores de atributos de um objeto assim que ele é instanciado.', option_d: 'contar quantas vezes o valor de um atributo foi obtido.', xp: 25)

Question.create(question_number: 2, title: '(Instituto UniFil-2021) A Programação Orientada a Objetos (POO) diz respeito a um padrão de desenvolvimento que é seguido por muitas linguagens, tais como: Java, C#, entre outras. Esse padrão se baseia em quatro pilares que é a base de sustentação desta linguagem. Assinale a alternativa que não representa um desses pilares.', 
                question_type: 2, correct_answer: 'A', quiz_id: q4.id, option_a: 'Absorção.', option_b: 'Encapsulamento.', 
                option_c: 'Herança.', option_d: 'Polimorfismo.', xp: 25)

Question.create(question_number: 3, title: '(IDCAP-2021) Orientação a objetos é um paradigma de análise, projeto e programação de sistemas de software baseado na composição e interação entre diversas unidades de software chamadas objetos. Marque a alternativa INCORRETA com relação a programação de orientação a objetos. ', 
                question_type: 2, correct_answer: 'B', quiz_id: q4.id, option_a: 'Os pacotes são pastas as quais podemos guardar arquivos (classes).', option_b: 'Declarar um objeto é o mesmo que instanciar um objeto.', 
                option_c: 'Cada objeto possui um endereço de memória.', option_d: 'O comportamento de um objeto é definido pelos métodos de sua classe.', xp: 25)

Question.create(question_number: 4, title: '(UERJ-2021) Considerando os conceitos de Herança, presentes na linguagem orientada a objetos Java, é correto afirmar que:', 
                question_type: 2, correct_answer: 'C', quiz_id: q4.id, option_a: 'uma vantagem da herança como forma de aumentar a possibilidade de reuso é que ela cria dependências entre classes em uma hierarquia.', option_b: 'a herança não oferece uma solução para o problema de modificação oriundo do reuso de tipos abstratos de dados.', 
                option_c: 'podem existir métodos na classe pai que não sejam visíveis na subclasse.', option_d: 'os métodos de classe podem realizar operações somente na classe pai.', xp: 25)