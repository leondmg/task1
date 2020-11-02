# frozen_string_literal: true

# Next line generator
class Generator
  def initialize
    @current_line = '1'
  end

  def generate
    prev_line = @current_line
    @current_line = generate_new_line
    prev_line
  end

  private

  def generate_new_line
    numbers = @current_line.split('')
    new_line = ''
    current_number = numbers.first
    k = 0
    numbers.each do |number|
      if number == current_number
        k += 1
      else
        new_line += generate_subline(current_number, k)
        k = 1
        current_number = number
      end
    end
    new_line + generate_subline(current_number, k)
  end

  def generate_subline(number, count)
    count.to_s + number
  end
end
