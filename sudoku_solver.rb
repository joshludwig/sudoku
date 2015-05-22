require './sudoku_helper'

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
SudokuHelper::print_grid(initial_grid)