# frozen_string_literal: true

require 'timezone'

time = Time.now
puts "Current time is #{time}"

formatted_time = time.strftime('%Y-%m-%d %H:%M:%S')
puts "Current time in formatted form: #{formatted_time}"

timezone = Timezone['America/Los_Angeles']

puts "Time in #{timezone} is #{timezone.utc_to_local(time)}"
