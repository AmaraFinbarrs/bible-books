if Division.count.zero?
  Division.create!(division: 'The Books of the Law')
  Division.create!(division: 'The Historical Books')
  Division.create!(division: 'The Poetical Books')
end

puts '================ Division Created! ====================='
