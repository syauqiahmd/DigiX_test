def most_text(file_path)
  file = File.read(file_path).delete("\n").gsub(/[,.?!]/, "")
  splitText = file.split.group_by(&:downcase).map {|key,value| [key, value.length]}
  return splitText.max_by {|key, val| val}
end

puts most_text(ARGV[0])
