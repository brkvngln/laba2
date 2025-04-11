<?php
function counts($nums) {
    $count = 0;
    foreach ($nums as $num) {
        // считаем количество цифр в числе
        $numb = strlen((string)abs($num)); // приводим число к строке и берем абсолютное значение
        // проверяем, нечетное ли количество цифр
        if ($numb % 2 != 0) {
            $count++;
        }
    }
    return $count;
}

echo "введите количество чисел: ";
$n = intval(trim(fgets(STDIN))); // Читаем количество чисел
$nums = [];

echo "введите $n целых числа:\n";
for ($i = 0; $i < $n; $i++) {
    $nums[] = intval(trim(fgets(STDIN))); // вводим числа в массив
}
$res = counts($nums);
echo "количество чисел с нечетным количеством цифр: $res\n";

?>
