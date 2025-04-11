<?php
function compr($s) {
    if (empty($s)) return $s;

    $comp = '';
    $count = 1;
    $len = strlen($s);

    for ($i = 1; $i < $len; $i++) {
        if ($s[$i] === $s[$i - 1]) {
            $count++;
        } else {
            $comp .= $s[$i - 1] . $count;
            $count = 1;
        }
    }

    // Добавляем последний символ и его количество
    $comp .= $s[$len - 1] . $count;

    // Возвращаем сжатую строку, если она короче исходной
    return strlen($comp) < strlen($s) ? $comp : $s;
}
// 
$S = trim(fgets(STDIN));
$comp = compr($S);
echo "Сжатая строка: " . $comp . PHP_EOL;
?>