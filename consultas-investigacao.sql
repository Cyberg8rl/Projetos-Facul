-- Consultas de investigação — banco acadêmico
-- Execute após rodar o script de criação e carga de dados do projeto.
-- Objetivo: praticar consultas úteis para investigar dados e responder perguntas.

USE sistema;

-- 1. Conferir matrículas com aluno, disciplina, turma e professor.
SELECT
    a.nome_completo AS aluno,
    d.nome_disciplina AS disciplina,
    t.ano_semestre AS semestre,
    p.nome_professor AS professor,
    m.nota_final,
    m.frequencia_aluno
FROM Matriculas AS m
JOIN Alunos AS a ON a.id_aluno = m.id_aluno
JOIN Turmas AS t ON t.id_turma = m.id_turma
JOIN Disciplinas AS d ON d.id_disciplina = t.id_disciplina
JOIN Professores AS p ON p.id_professor = t.id_professor
ORDER BY a.nome_completo;

-- 2. Investigar matrículas que precisam de atenção
-- Regra ilustrativa: nota abaixo de 7 ou frequência abaixo de 75%.
SELECT
    a.nome_completo AS aluno,
    d.nome_disciplina AS disciplina,
    m.nota_final,
    m.frequencia_aluno
FROM Matriculas AS m
JOIN Alunos AS a ON a.id_aluno = m.id_aluno
JOIN Turmas AS t ON t.id_turma = m.id_turma
JOIN Disciplinas AS d ON d.id_disciplina = t.id_disciplina
WHERE m.nota_final < 7
   OR m.frequencia_aluno < 75
ORDER BY m.nota_final ASC;

-- 3. Contar alunos matriculados por curso.
SELECT
    c.nome_curso,
    COUNT(DISTINCT m.id_aluno) AS total_alunos
FROM Cursos AS c
JOIN Disciplinas AS d ON d.id_curso = c.id_curso
JOIN Turmas AS t ON t.id_disciplina = d.id_disciplina
JOIN Matriculas AS m ON m.id_turma = t.id_turma
GROUP BY c.id_curso, c.nome_curso
ORDER BY total_alunos DESC;

-- 4. Encontrar disciplinas que ainda não possuem turmas cadastradas.
SELECT
    d.id_disciplina,
    d.nome_disciplina
FROM Disciplinas AS d
LEFT JOIN Turmas AS t ON t.id_disciplina = d.id_disciplina
WHERE t.id_turma IS NULL;

-- 5. Buscar um aluno por e-mail (substitua pelo e-mail desejado).
SELECT
    id_aluno,
    nome_completo,
    email,
    numero_matricula
FROM Alunos
WHERE email = 'mari.silva@email.com';

-- Observação: dados e regras são didáticos. Confirme sempre as regras de negócio
-- antes de usar uma consulta para tomar decisões reais.
