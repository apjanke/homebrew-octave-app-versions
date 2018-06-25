#:  * `octave-app-list-formulae`:
#:    Lists all formulae with version and description info

require "formula"
require "formulary"
require "csv"

# Read our license info
tap = Tap.fetch("octave-app/octave-app")
assets = tap.path/"assets"
license_map = {}
CSV.foreach(assets/"COPYING/licenses.csv") do |row|
  license_map[row[0]] = row[1]
end

Formula.installed.each do |f|
  license = license_map[f.name] || "Unknown License"
  puts "#{f.name} #{f.version.to_s} (#{license})"
  puts f.desc
  puts f.homepage
  puts "Source code: #{f.stable.url}"
  puts ""
end
