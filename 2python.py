def count_numbers_with_odd_digits(nums):
    return sum(1 for num in nums if len(str(abs(num))) % 2 != 0)

# Ввод данных от пользователя
input_str = input("Введите числа через запятую: ")
nums = list(map(int, input_str.split(',')))

# Вычисление и вывод результата
result = count_numbers_with_odd_digits(nums)
print("Output:", result)
