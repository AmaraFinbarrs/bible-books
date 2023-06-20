if User.count.zero?
  # GENERIC USERS
  # Create users that are members
  member_counter = 0
  Config::TOTAL_MEMBER_COUNT.times do
    member_counter += 1
    Portal.find_by(name: member) do |portal|
      User.create!(email: "BB-test-member-#{member_counter}@biblebook.io",
                   password: 'password',
                   first_name: Faker::Name.first_name,
                   last_name: Faker::Name.last_name,
                   date_of_birth: rand(18..100).years.ago,
                   mobile_number: Faker::Number.leading_zero_number(digits: 11),
                   portal_id: portal.id)
    end
  end

  # Create users that are admins
  admin_counter = 0
  Config::TOTAL_ADMIN_COUNT.times do
    admin_counter += 1
    Portal.find_by(name: admin) do |portal|
      User.create!(email: "BB-test-admin-#{admin_counter}@biblebook.io",
                   password: 'password',
                   first_name: Faker::Name.first_name,
                   last_name: Faker::Name.last_name,
                   date_of_birth: rand(18..100).years.ago,
                   mobile_number: Faker::Number.leading_zero_number(digits: 11),
                   portal_id: portal.id)
    end
  end

  # ADDITIONAL USERS SHOULD BE INCLUDED BELOW THIS LINE INSIDE THE CORRESPONDING PORTAL BLOCK
  # Create users that are members
  Portal.find_by(name: member) do |portal|
    User.create!(email: 'mandibles.finbz.234@gmail.com',
                 password: 'password',
                 first_name: 'Amanda',
                 last_name: 'Finbarrs-Ezema',
                 date_of_birth: DateTime.new(1997, 10, 25),
                 mobile_number: Faker::Number.leading_zero_number(digits: 11),
                 portal_id: portal.id)
  end

  # Create users that are admins
  Portal.find_by(name: admin) do |portal|
    User.create!(email: 'amarafinbarrs123@gmail.com',
                 password: 'password',
                 first_name: 'Amarachukwu',
                 last_name: 'Finbarrs-Ezema',
                 date_of_birth: DateTime.new(1997, 10, 25),
                 mobile_number: aker::Number.leading_zero_number(digits: 11),
                 portal_id: portal.id)
  end
end
