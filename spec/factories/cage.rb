require 'faker'

FactoryBot.define do
    factory :cage do
        name { Faker::Movies::StarWars.call_sign }
        max_capacity { Faker::Number.between(1, 10) }
        power_status { ["ACTIVE", "DOWN"].sample }
    end
end