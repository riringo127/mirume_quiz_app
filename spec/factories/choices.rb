FactoryBot.define do
    factory :choice do
      content { 'c_choice' }
      is_answer { :correct }
      association :quiz
    end

      trait :incorrect do
        content { 'i_choice' }
        is_answer { :incorrect }
        association :quiz
      end
end