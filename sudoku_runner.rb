require './sudoku_solver'

initial_grid = ['9','','','','7','4','','1',''],
               ['','','','','6','','','9','8'],
               ['1','8','','5','','','','','7'],
               ['','','7','3','8','','','','1'],
               ['5','','8','','1','','','',''],
               ['2','','','','','9','8','','6'],
               ['','','','','2','7','','8','5'],
               ['8','','5','1','','6','','7','4'],
               ['4','','6','9','5','','','','']

puts 'Starting Grid'
solver = SudokuSolver.new(initial_grid)
solver.print_grid
row_result = solver.check_rows
puts "Rows = #{row_result}"

col_result = solver.check_cols
puts "Cols = #{col_result}"

square_result = solver.check_squares
puts "Squares = #{square_result}"