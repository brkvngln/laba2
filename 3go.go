package main
import "fmt"
func reverse(num int) int {
    rev := 0
    for num != 0 {
        rev = rev*10 + num%10
        num /= 10
    }
    return rev
}
func main() {
    var n int
    fmt.Scan(&n) // Считываем количество чисел
    for i := 0; i < n; i++ {
        var num int
        fmt.Scan(&num) // Считываем каждое число
        fmt.Print(reverse(num), " ") // Выводим перевёрнутое
    }
}