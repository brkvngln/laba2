use std::io;

fn main() {
    // пользователь вводит строку для сжатия
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Ошибка при чтении строки");

    // удаляем символ новой строки
    let input = input.trim();

    // вызываем функцию для сжатия строки
    let compressed = compress_string(input);

    // если сжатая версия не короче исходной, возвращаем исходную строку
    if compressed.len() < input.len() {
        println!("Сжатая строка: {}", compressed);
    } else {
        println!("Сжатая строка: {}", input);
    }
}

fn compress_string(s: &str) -> String {
    let mut compressed = String::new();
    let mut count = 1;

    for i in 1..s.len() {
        if s.chars().nth(i) == s.chars().nth(i - 1) {
            count += 1;
        } else {
            compressed.push(s.chars().nth(i - 1).unwrap());
            compressed.push_str(&count.to_string());
            count = 1; // сбрасываем счетчик
        }
    }

    // добавляем последний символ и его количество
    if !s.is_empty() {
        compressed.push(s.chars().last().unwrap());
        compressed.push_str(&count.to_string());
    }

    compressed
}
