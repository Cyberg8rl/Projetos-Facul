# Portfólio SQL — Banco de dados acadêmico

## Objetivo

Projeto de estudo em MySQL para criar uma base de dados acadêmica e praticar modelagem relacional, integridade dos dados e consultas de investigação.

## Estrutura do banco

O script `PORTFÓLIO SQL` cria o banco `sistema` e as tabelas:

- `Cursos`
- `Professores`
- `Alunos`
- `Disciplinas`
- `Turmas`
- `Matriculas`

As tabelas usam chaves primárias, restrições `NOT NULL` e `UNIQUE`, além de chaves estrangeiras para representar os relacionamentos. O script também insere dados fictícios para demonstração.

## Arquivos

- [`PORTFÓLIO SQL`](./PORTF%C3%93LIO%20SQL): criação das tabelas e carga de dados de exemplo.
- [`consultas-investigacao.sql`](./consultas-investigacao.sql): consultas para investigar dados e responder perguntas.

## Como executar

1. Abra o MySQL Workbench ou outro cliente MySQL.
2. Revise e execute primeiro o arquivo `PORTFÓLIO SQL`.
3. Depois, execute as consultas de `consultas-investigacao.sql`.

> **Atenção:** o script de criação contém `DROP DATABASE IF EXISTS sistema`, que apaga o banco `sistema` existente. Execute somente em ambiente de teste e não use dados pessoais reais.

## Consultas praticadas

- `JOIN` para relacionar alunos, matrículas, disciplinas e professores.
- Filtros para localizar registros que atendem a critérios.
- `GROUP BY` e `COUNT` para resumir informações.
- `LEFT JOIN` para localizar disciplinas sem turmas.
- Busca de registro por e-mail.

As regras de atenção usadas nas consultas são exemplos didáticos. Em cenários reais, as regras de negócio devem ser confirmadas antes de tirar conclusões.

## Próximas melhorias

- Incluir capturas de tela dos resultados das consultas.
- Adicionar cenários de investigação escritos como chamados técnicos.
- Separar os scripts de criação, carga de dados e consultas em uma estrutura de pastas.
