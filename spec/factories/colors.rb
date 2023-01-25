FactoryBot.define do
    factory :color do
      sequence(:name, "name_1")
      sequence(:code, "code_1")
      sequence(:css_class, "css_class_1")
      season_type { :uncategorized }
      association :category
    
      trait :spring do
        season_type { :spring }
      end

      trait :summer do
        season_type { :summer }
      end

      trait :autumn do
        season_type { :autumn }
      end

      trait :winter do
        season_type { :winter }
      end
    end
end