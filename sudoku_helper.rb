module SudokuHelper
  def self.print_grid(grid)
    puts '+-----------------------------------+'
    grid.each_with_index do |row, i|
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
end