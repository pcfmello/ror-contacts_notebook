# rake db:drop db:create db:migrate db:seed utils:seed

namespace :utils do
  
  desc "Popular banco de dados"
  task seed: :environment do

    # Inserts data on contact table
    10.times do |i|
      Contact.create!(
          name: Faker::Name.name, 
          email: Faker::Internet.email, 
          kind: Kind.all.sample, 
          rmk: Faker::Lorem.paragraph([1..5].sample)
      )
    end
    puts "[Contatos (Contacts)][OK]"

    # Inserts data on addresses table
    Contact.all.each do |contact|
      Address.create!(
        street: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state,
        contact: contact
      )
    end
    puts "[Endereços (Addresses)][OK]"

    # Inserts data on phone table
    Contact.all.each do |contact|
      1..5.times do |i|
        Phone.create(
          phone: Faker::PhoneNumber.phone_number,
          contact: contact          
        )
      end
    end
    puts "[Telefones (Phones)][OK]"
  end

end
