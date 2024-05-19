FactoryBot.define do
  factory :projects_widget, class: 'Projects::Widget' do
    association :project
    name { "MyString" }
  end
end
