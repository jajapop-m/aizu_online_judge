# floor = [0]*10
# build = Array.new(3){fllor.dup}
# builds = Array.new(4){build.dup}
#
# n = gets.to_i
# n.times do
#   b,f,r,v = gets.split.map(&:to_i)
#   builds[b-1][f-1][r-1] += v
# end
#
# builds.each_with_index do |build,idx|
#   build.each do |floor|
#     print " "
#     puts floor.join(" ")
#   end
#   puts "#"*20 if idx != 3
# end

# class Buildings
#   attr_accessor :building
#   def initialize(builds=4,floor=3,room=10)
#     @building = Array.new(builds){Array.new(floor){[0]*room}}
#   end
#
#   def change_number(data)
#     b,f,r,v = data
#     @building[b-1][f-1][r-1] += v
#   end
#
#   def puts_result
#     building.each_with_index do |build,idx|
#       build.each do |floor|
#         print " "
#         puts floor.join(" ")
#       end
#       puts "#"*20 if idx != building.length-1
#     end
#   end
# end
#
# buildings = Buildings.new
# n = gets.to_i
# n.times {buildings.change_number(gets.split.map(&:to_i))}
# buildings.puts_result
