require 'matrix'
require 'square'

class Field < Matrix
  def square(row, column)
    if self[row, column] == '*'
      '*'
    else
      result = 0

      [-1, 0, 1].each do |dx|
        [-1, 0, 1].each do |dy|
          result += 1 if (0...self.row_size).include?(row + dx) && (0...self.column_size).include?(column + dy) && self[row + dx, column + dy] == Square::MINE
        end
      end

      result.to_s
    end
  end

  def to_output
    result = ''

    (0...self.row_size).each do |row|
      (0...self.column_size).each do |column|
        result += square(row, column)
      end

      result += "\n"
    end

    result
  end
end