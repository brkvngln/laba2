<?php
function reverse($num) {
    $rev = 0;
    while ($num != 0) {
        $rev = $rev * 10 + $num % 10;
        $num = (int)($num / 10);
    }
    return $rev;
}
// чтение чисел из ввода
$inp = trim(fgets(STDIN));
$numb = explode(' ', $inp);
foreach ($numb as $number) {
    echo reverse((int)$number) . ' ';
}
?>