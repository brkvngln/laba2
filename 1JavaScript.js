const readline = require('readline');
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});
function compr(s) {
    let comp = '';
    let count = 1;
    for (let i = 1; i < s.length; i++) {
        if (s[i] === s[i - 1]) {
            count++;
        } else {
            comp += s[i - 1] + count;
            count = 1; // Сбрасываем счетчик
        }
    }
    // добавляем последний символ и его количество
    if (s.length > 0) {
        comp += s[s.length - 1] + count;
    }
    return comp;
}
// считываем строку от пользователя
rl.question("Введите строку: ", (S) => {
    const comp = compr(S);
    // если сжатая версия не короче исходной, возвращаем исходную строку
    if (comp.length < S.length) {
        console.log("Сжатая строка:", comp);
    } else {
        console.log("Сжатая строка:", S);
    }
    rl.close(); // Закрываем интерфейс после завершения
});
