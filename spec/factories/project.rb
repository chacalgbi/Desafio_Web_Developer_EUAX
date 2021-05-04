# frozen_string_literal: true

FactoryBot.define do
  factory :new_project, class: 'Project' do
    description { Faker::IndustrySegments.industry }
    start_date { Faker::Date.in_date_period }
    end_date { Faker::Date.in_date_period }
  end
end
