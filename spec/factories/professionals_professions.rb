# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :professionals_profession, :class => 'ProfessionalsProfessions' do
    professional nil
    profession nil
  end
end
