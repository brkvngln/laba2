import Foundation
func reverse(_ num: Int) -> Int {
    var n = num
    var rev = 0
    while n != 0 {
        rev = rev * 10 + n % 10
        n /= 10
    }
    return rev
}
// Ввод чисел
print("Введите числа через пробел:", terminator: " ")
guard let inp = readLine() else {
    fatalError("Ошибка чтения ввода")
}

let number = inp.split(separator: " ").compactMap { Int($0) }
guard !number.isEmpty else {
    fatalError("Введены нечисловые данные")
}
let revers = number.map(reverse)
print("Результат:", revers.map(String.init).joined(separator: " "))