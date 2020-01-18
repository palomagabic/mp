gem 'humanize'
require 'json'
require 'humanize'
require 'pathname'

puts "Deleting all files under the test/fixtures directory"
Pathname.new('./test/fixtures/').institution.each do |path|
  File.delete(path) if File.exist?(path)
end
puts "Converting all files under the db/seeds directory"
Pathname.new('./db/seeds/').institution.each do |path|
  file_name = path.basename.to_s
  new_file_name = file_name.gsub! 'json', 'yml'
  if(!File.directory?(path))
    records = JSON.parse(File.read(path))
    keys = records[0].keys
    #initialize counter for humanize
    counter = 1
    f = File.new('./test/fixtures/'+new_file_name, 'w')
    records.each do |record|
      clean_key = counter.humanize.gsub " ","-"
      f.write(clean_key +":\n")
      keys.each do |k|
        f.write("  "+k+": " + record[k].to_s+"\n")
      end
      counter +=1
    end
    f.close
  end
end
