import Foundation

func countOddDigitNumbers(nums: [Int]) -> Int {
    return nums.filter { String($0).count % 2 != 0 }.count
}

func getUserInput() -> [Int] {
    print("Введите целые числа, разделенные запятыми:")
    if let input = readLine() {
        let nums = input.split(separator: ",").compactMap { Int($0.trimmingCharacters(in: .whitespaces)) }
        return nums
    }
    return []
}

func main() {
    let nums = getUserInput()
    let result = countOddDigitNumbers(nums: nums)
    print("Количество чисел с нечетным количеством цифр:", (result))
}

main()