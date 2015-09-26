require 'time'
File.open(ARGV[0]).each_line do |line|
    phrases = line.split(' ').each do |timeStr|
        Time.parse(timeStr)
    end
    phrases.sort! {|a, b| b <=> a}
    puts phrases.join(' ')
end
