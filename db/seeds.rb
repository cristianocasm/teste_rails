# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Proposta.create!([
  {
    nome: 'Proposta 1',
    descricao: 'Descrição Proposta 1',
    valor: 1.50,
    inicio: Date.today,
    fim: Date.tomorrow,
    cidade: 'Contagem'
  },
  {
    nome: 'Proposta 2',
    descricao: 'Descrição Proposta 2',
    valor: 2.50,
    inicio: Date.today,
    fim: 3.days.from_now,
    cidade: 'Belo Horizonte'
  },
  {
    nome: 'Proposta 3',
    descricao: 'Descrição Proposta 3',
    valor: 3.00,
    inicio: Date.tomorrow,
    fim: 5.days.from_now,
    cidade: 'Betim'
  }
  ])