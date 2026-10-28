# Portfólio SQL — Banco de dados acadêmico

## Objetivo

Script de estudo em MySQL para criar uma base de dados acadêmica e praticar modelagem relacional, integridade dos dados e relacionamentos entre tabelas.

## Estrutura

O script `PORTFÓLIO SQL` cria o banco `sistema` e as tabelas:

- `Cursos`
- `Professores`
- `Alunos`
- `Disciplinas`
- `Turmas`
- `Matriculas`

As tabelas usam chaves primárias, restrições `NOT NULL` e `UNIQUE`, além de chaves estrangeiras para representar os relacionamentos entre cursos, disciplinas, turmas, professores, alunos e matrículas. O script também insere dados fictícios para demonstração.

## Como executar

1. Abra o MySQL Workbench ou outro cliente MySQL.
2. Abra o arquivo `PORTFÓLIO SQL`.
3. Revise o script antes de executar: ele contém `DROP DATABASE IF EXISTS sistema`, que apaga o banco `sistema` existente.
4. Execute o script em um ambiente de estudo.

> **Atenção:** execute apenas em uma base de testes. Não use dados pessoais reais neste projeto.

## O que este projeto demonstra

- Criação de banco e tabelas relacionais.
- Definição de chaves primárias e estrangeiras.
- Restrições de integridade.
- Inserção de dados para testes.

## Próximas melhorias

- Adicionar consultas de investigação com `SELECT`, `WHERE`, `JOIN`, `GROUP BY` e ordenação.
- Incluir exemplos de perguntas de negócio e os resultados esperados.
- Separar scripts de criação, carga de dados e consultas.
