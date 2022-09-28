# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


["Indian", "Candian"].each do |c|
    Nationality.create({name: c})
end


Nationality.all.each do |nat|
    names = %w(Sachin Kapil Mohan Zafar Nawab John)
    5.times do
        name = names.sample
        email = "#{name}@fakemail.com"
        Customer.create(name: name, nationality_id: nat.id, email: email)
    end
end