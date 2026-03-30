# Linketinder - Banco de Dados (PostgreSQL)

## Sobre o Projeto

Este projeto consiste na modelagem e implementação de um banco de dados relacional em PostgreSQL para a aplicação Linketinder, que conecta candidatos e empresas com base em competências.

---

## Objetivo

Criar a estrutura do banco de dados com suas entidades, relacionamentos e restrições utilizando SQL.

---

## Estrutura do Banco

O banco é composto pelas seguintes tabelas:

* **candidatos**: dados dos usuários que buscam emprego
* **empresas**: dados das empresas
* **competencias**: habilidades técnicas
* **vagas**: oportunidades de emprego
* **competencias_candidatos**: relação entre candidatos e competências (N:N)

---

## Relacionamentos

* candidatos ↔ competencias: N:N
* empresas → vagas: 1:N

---

## Tecnologias

* PostgreSQL
* SQL

---

## Melhorias Futuras

* Criar tabela de candidaturas (interesse/match)
* Relacionar vagas com competências
* Adicionar validações com `CHECK`

---

