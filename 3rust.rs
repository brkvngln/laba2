use std::io;
fn reverse_number(num: i32) -> i32 {
    let mut n = num;
    let mut reversed = 0;
    while n != 0 {
        reversed = reversed * 10 + n % 10;
        n /= 10;
    }
    reversed
}
fn main() {
    println!("Введите числа через пробел:");
    let mut input = String::new();
    io::stdin()
        .read_line(&mut input)
        .expect("Не удалось прочитать ввод");
    let numbers: Vec<i32> = input
        .split_whitespace()
        .filter_map(|x| x.parse().ok())
        .collect();
    if numbers.is_empty() {
        eprintln!("Ошибка: введены нечисловые данные");
        return;
    }
    let reversed_numbers: Vec<i32> = numbers.iter().map(|&x| reverse_number(x)).collect();
    println!(
        "Результат: {}", 
        reversed_numbers
            .iter()
            .map(|x| x.to_string())
            .collect::<Vec<_>>()
            .join(" ")
    );
}