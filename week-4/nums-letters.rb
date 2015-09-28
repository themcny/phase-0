# Hours in a year - (days_in_yr * hrs_in_day)
puts "On a regular year: #{365*24} hours."
puts "On a leap year #{366*24} hours."

#minutes in a decade - (yrs_in_decade*(days_in_yr +  2_extra_leap_days)*hrs_in_day*mins_in_hr)
puts "If there are only two leap years in that decade: #{((10*365)+2))*24*60} minutes."
puts "If there are three leap years in that decade:#{(10*365+3)*24*60} minutes."

#my age in seconds - (21 years, 360 days)
puts "I am #{(21*365+360+5)*24*60*60} seconds old."