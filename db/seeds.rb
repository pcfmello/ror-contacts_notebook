# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Deleta as tabelas, cria-as novamente, faz as migrações e roda os scripts abaixo
# rake db:drop db:create db:migrate db:seed

puts "Gerando dados iniciais do Banco de Dados..."
puts ""

puts "[Tipos de contatos (Kinds)]..."
Kind.create!([
    {
        description: "Amigo"
    }, 
    {
        description: "Contato"
    }, 
    {
        description: "Comercial"
    }
])
puts "[Tipos de contatos (Kinds)][OK]"