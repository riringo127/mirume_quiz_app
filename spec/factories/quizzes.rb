FactoryBot.define do
    factory :quiz do
      association :color
      quiz_format { :all_season }
    end

    trait :spring do
        quiz_format { :spring }
      end

      trait :summer do
        quiz_format { :summer }
      end

      trait :autumn do
        quiz_format { :autumn }
      end

      trait :winter do
        quiz_format { :winter }
      end
end