require_relative '../lib/solver'

puzzle_path = ARGV[0]
puzzle_text = File.read(puzzle_path)
solver = Solver.new(puzzle_text)
solver.solve
