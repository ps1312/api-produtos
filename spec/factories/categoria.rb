FactoryBot.define do
    factory :categoria do
        nome { Faker::Lorem.word }
    end
end