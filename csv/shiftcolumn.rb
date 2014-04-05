require 'csv'
# puts ""

acsv = CSV.read("./foo.csv", {headers:true, return_headers:true})
headers = CSV.open("./foo.csv", 'r', :headers => true).read.headers
@headers_array =[]

# @test=[]
# @test.push("herp")
# @test.push("derp")
# @test.push("lerp")
# puts @test.class

# Combine headers into array
headers.each do |n|
	@headers_array.push(n)
	# puts "header #{n}"
end
# Remove nil values from array
@headers_array = @headers_array.compact

puts "headers are #{@headers_array}"
puts acsv

# Rearrange headers
temp_index = @headers_array[0]
@headers_array[0]     = @headers_array[1]
@headers_array[1]     = temp_index


puts "headers array is now #{@headers_array}"

# Rearrange Columns
acsv.each do |row|
  temp_index = row[0]
  row[0]     = row[1]
  row[1]     = temp_index
end

puts "acsv is #{acsv}"


# newcsv = CSV.open("bar.csv", "w", :write_headers=>true,:headers=>@headers_array) do |csv|
newcsv = CSV.open("bar.csv", "w") do |csv|
	csv << acsv
end



