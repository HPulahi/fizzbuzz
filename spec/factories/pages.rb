FactoryGirl.define do
  factory :page do
  end

  factory :params, class:Hash do
    page_num     3
    page_size   10
    initialize_with { attributes }
  end
end
