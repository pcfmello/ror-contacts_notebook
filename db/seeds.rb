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

puts "[Contatos (Contacts)]..."
Contact.create!([
    {
        name: "Paulo Cesar", 
        email: "pcfmello@gmail.com", 
        kind: Kind.all.sample, 
        rmk: "Trabalha na Exact Sales"
    },
    {
        name: "Claudia Rodrigues", 
        email: "claudinha2112@gmail.com", 
        kind: Kind.all.sample, 
        rmk: "Pedagoga e Psicóloga"},
    {
        name: "Lucas Rodrigues", 
        email: "lukas_dagoga@hotmail.com", 
        kind: Kind.all.sample, 
        rmk: "Estudante de Direito na UNISUL"
    }
])
10.times do |i|
    Contact.create(
        name: Faker::Name.name, 
        email: Faker::Internet.email, 
        kind: Kind.all.sample, 
        rmk: Faker::Lorem.paragraph([1..5].sample)
    )
end
puts "[Contatos (Contacts)][OK]"