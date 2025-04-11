function reverse(num) {    
let rev = 0;    
while (num !== 0) {        
rev = rev * 10 + num % 10;        
num = Math.trunc(num / 10);    
}    
return rev;}
const inp = prompt("Введите числа через пробел:"); // Диалоговое окно
const number = inp.split(' ').map(Number);
const res = number.map(reverse).join(' ');
console.log(res); // Вывод в консоль
