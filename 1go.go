package main

import (
 "bufio"
 "fmt"
 "os"
 "strings"
)

func main() {
 // считываем строку от пользователя
 reader := bufio.NewReader(os.Stdin)
 S, _ := reader.ReadString('\n')
 S = strings.TrimSpace(S) // Убираем пробелы и символы новой строки

 // вызываем функцию для сжатия строки
 comp := compr(S)

 // если сжатая версия не короче исходной, возвращаем исходную строку
 if len(comp) < len(S) {
  fmt.Println("Сжатая строка:", comp)
 } else {
  fmt.Println("Сжатая строка:", S)
 }
}

func compr(s string) string {
 if len(s) == 0 {
  return s
 }

 var comp strings.Builder
 count := 1

 for i := 1; i < len(s); i++ {
  if s[i] == s[i-1] {
   count++
  } else {
   comp.WriteByte(s[i-1])
   comp.WriteString(fmt.Sprintf("%d", count))
   count = 1 // сбрасываем счетчик
  }
 }

 // добавляем последний символ и его количество
 comp.WriteByte(s[len(s)-1])
 comp.WriteString(fmt.Sprintf("%d", count))

 return comp.String()
}
