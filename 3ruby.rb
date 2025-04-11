def reverse_number(num)
  reversed = 0
  while num != 0
    reversed = reversed * 10 + num % 10
    num /= 10
  end
  reversed
end
print "Введите числа через пробел: "
input = gets.chomp
numbers = input.split.map(&:to_i)
if numbers.empty?
  puts "Ошибка: введены нечисловые данные"
  exit(1)
end
reversed_numbers = numbers.map { |n| reverse_number(n) }
puts "Результат: #{reversed_numbers.join(' ')}"