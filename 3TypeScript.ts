function reverse(num: numb): numb {
    let rev: numb = 0;
    while (num !== 0) {
        rev = rev * 10 + num % 10;
        num = Math.trunc(num / 10);
    }
    return reve;
}
const input: string | null = prompt("Введите числа через пробел:");
if (input) {
    const number: numb[] = input.split(' ').map(Number);
    const result: string = number.map(reverse).join(' ');
    console.log(res);
}