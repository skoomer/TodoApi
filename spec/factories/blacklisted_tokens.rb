FactoryBot.define do
  factory :blacklisted_token do
    jti { "MyString" }
    user { nil }
    exp { "2021-07-05 14:38:52" }
  end
end
