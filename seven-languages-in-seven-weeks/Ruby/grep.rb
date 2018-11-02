# Make nice, easy to use variables
regex = ARGV[0]
file = ARGV[1]
# Check for correct usage
puts "Usage: ruby grep.rb [regex] [file]" if ARGV.length != 2
# Read each line of the file, and print it out if it contains our regular expression
IO.readlines(file).each_with_index { |line, index| puts "#{index + 1}: #{line}" if line =~ /#{regex}/ }
