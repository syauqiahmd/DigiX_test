def most_text(file_path)
  mostText = []
  file = File.read(file_path).delete("\n").gsub(/[,.?!]/, "")
  splitText = file.split.group_by(&:downcase).map {|key,value| [key, value.length]}.sort_by{|key, value| -value}
  splitText.each do |index|
    mostText.push(index)
    if mostText.length == 3
      break
    end
  end
  return mostText
end

puts most_text(ARGV[0])
