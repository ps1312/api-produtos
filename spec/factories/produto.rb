FactoryBot.define do
    factory :produto do
        nome { Faker::Lorem.word }
        categoria_id { nil }
    end
end