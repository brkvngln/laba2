def count_numbers_with_odd_digits(nums)
  nums.count { |num| num.abs.to_s.length.odd? }
end
# Ввод данных от пользователя
print "Введите числа через запятую: "
input = gets.chomp
# Преобразование в массив чисел
nums = input.split(',').map { |s| s.strip.to_i }
# Подсчет и вывод результата
result = count_numbers_with_odd_digits(nums)
puts "Output: #{result}"