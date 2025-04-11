func compr(_ s: String) -> String {
   import Foundation
 guard !s.isEmpty else { return s}
    
    var comp = ""
    var count = 1
        for i in 1..<s.count {
        let curInd = s.index(s.startIndex, offsetBy: i)
        let prevInd = s.index(s.startIndex, offsetBy: i - 1)
        if s[curInd ] == s[prevInd] {
            count += 1
        } else {
            comp.append(s[prevInd])
            comp.append(String(count))
            count = 1
        }
    }
    // добавляем последний символ и его количество
    let lastInd = s.index(s.startIndex, offsetBy: s.count - 1)
    comp.append(s[lastInd])
    comp.append(String(count))
    // возвращаем сжатую строку, если она короче оригинала
    return comp.count < s.count ? comp : s
}
// ввод строки пользователем
if let S = readLine() {
    let res = compr(S) // здесь мы определяем переменную res
    print("Результат: " + res) // теперь выводим результат
}
