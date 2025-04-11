use std::io;

fn count_numbers(nums: Vec<i32>) -> usize {
    nums.iter()
        .filter(|&&num| {
            let digit_count = num.abs().to_string().len(); // считаем количество цифр
            digit_count % 2 != 0 // проверяем, нечетное ли количество цифр
        })
        .count() // подсчитываем количество чисел с нечетным количеством цифр
}

fn main() {
    let mut input = String::new();

    println!("введите количество чисел: ");
    io::stdin().read_line(&mut input).expect("не удалось прочитать строку");
    let n: usize = input.trim().parse().expect("введите корректное число");

    let mut nums = Vec::new();
    println!("введите {} целых числа:", n);
    
    for _ in 0..n {
        input.clear(); // Очищаем строку перед новым вводом
        io::stdin().read_line(&mut input).expect("не удалось прочитать строку");
        let num: i32 = input.trim().parse().expect("введите корректное число");
        nums.push(num);
    }

    let res = count_numbers(nums);
    println!("количество чисел с нечетным количеством цифр: {}", res);
}

