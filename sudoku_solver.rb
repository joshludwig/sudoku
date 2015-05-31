class SudokuSolver
  attr_accessor :grid

  def initialize(grid)
    @grid = grid
  end

  def check_rows
    @grid.each do |row|
      unless check_row_col row
        return false
      end
    end
  end

  def check_cols
    @grid.transpose.each do |col|
      unless check_row_col col
        return false
      end
    end
  end

  def check_squares
    squares = Array.new
    x = 0
    y = 0
    size = 3
    3.times do
      3.times do
        squares.push get_square_array(x, y, size)
        x += 3
      end
      y += 3
      x = 0
    end
    squares.each do |col|
      unless check_row_col col
        return false
      end
    end
  end

  def print_grid
    puts '+-----------------------------------+'
    @grid.each_with_index do |row, i|
      if (i % 3 == 0) and i > 1
        puts '|-----------+-----------+-----------|'
      end
      print '| '
      row.each_with_index do |cell, j|
        if (j % 3 == 0) and (j > 1)
          print ' | '
        end
        if cell.empty?
          print ' * '
        else
          print " #{cell} "
        end
      end
      puts ' |'
    end
    puts '+-----------------------------------+'
  end

  private

  def check_row_col(row)
    good_row = ['1', '2', '3', '4', '5', '6', '7', '8', '9']
    (good_row - row).empty?
  end

  def get_square_array(x, y, size)
    square_arrays = Array.new
    size.times do
      square_arrays.push @grid[y].slice(x...x+size)
      y += 1
    end
    square_arrays.reduce { |arr, elem| arr.concat(elem) }
  end

end