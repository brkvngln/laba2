function compr(s: string): string {
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

    // Добавляем последний символ и его количество
    if (s.length > 0) {
        comp += s[s.length - 1] + count;
    }

    return comp;
}

// Считываем строку от пользователя
const S = prompt("Введите строку:");

// Проверяем, что ввод не пустой
if (S) {
    const comp= compr(S);

    // Если сжатая версия не короче исходной, возвращаем исходную строку
    if (comp.length < S.length) {
        console.log("Сжатая строка:", comp);
    } else {
        console.log("Сжатая строка:", S);
    }
}
