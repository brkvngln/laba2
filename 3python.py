def reverse(num):
    rev = 0
    while num != 0:
        rev = rev * 10 + num % 10
        num = num // 10
    return rev
inp = input("Введите числа через пробел: ")
number = [int(x) for x in inp.split() if x.lstrip('-').isdigit()]
if not number:
    print("Ошибка: введены нечисловые данные")
    exit(1)
reversed = [reverse(num) for num in number]
print("Результат:", " ".join(map(str, reversed)))
