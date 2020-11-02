# frozen_string_literal: true

require './lib/generator'

generator = Generator.new

n = gets.to_i

n.times do
  puts generator.generate
end
