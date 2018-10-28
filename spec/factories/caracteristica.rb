FactoryBot.define do
    factory :caracteristica do
        nome { Faker::Lorem.word }
        produto_id nil
    end
end