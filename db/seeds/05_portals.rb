if Portal.count.zero?
  [member, admin].each do |user|
    Portal.create!(name: user)
  end
end
puts '========== Portals Created!==============='
