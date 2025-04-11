package main
import (
 "fmt"
 "strconv"
)
func count(nums []int) int {
 count := 0
 for _, num := range nums {
 numb := len(strconv.Itoa(abs(num))) // считаем количество цифр
  if numb%2 != 0 {                     // проверяем, нечетное ли количество цифр
   count++
  }
 }
 return count
}

func abs(x int) int {
 if x < 0 {
  return -x
 }
 return x
}

func main() {
 var n int
 fmt.Print("введите количество чисел: ")
 fmt.Scan(&n)

 nums := make([]int, n)
 fmt.Printf("введите %d целых числа:\n", n)
 for i := 0; i < n; i++ {
  fmt.Scan(&nums[i])
 }

 res := count(nums)
 fmt.Printf("количество чисел с нечетным количеством цифр: %d\n", res)
}
