def letter_frequency(path_file)
  file = File.read(path_file).delete(" \n")
  fileSplit = file.split(//)
  fileGroup = fileSplit.group_by(&:downcase).map {|key,value| [key, value.length]}
  letterMax = fileGroup.max_by {|key, val| val}
  return letterMax
end

puts letter_frequency(ARGV[0])
