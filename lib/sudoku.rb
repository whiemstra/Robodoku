require '../lib/solver'

path = ARGV[0]
puzzle = File.read(path) #.map(&:chomp)
solver = Solver.new(puzzle)
puts solver.solve
