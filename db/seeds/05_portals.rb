if Portal.count.zero?
  print "#{pretty_print_name('Portals')}\tStart: #{pretty_print_value(Time.now - @start_time)}"

  ['member', 'admin'].each do |user|
    Portal.create!(name: user)
  end

  puts "\tDuration: #{pretty_print_value(Time.now - @start_time)}   Elapsed: #{pretty_print_value(Time.now - @start_time)}"
  @last_time = Time.now
end
