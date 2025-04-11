.section .data
array: .int 1224, 34455, 1, 8, 17596   # Тестовые данные
len = (. - array) / 4                   # Длина массива

.section .text
.globl _start
_start:
    mov $array, %edi        # Загрузка адреса массива
    mov $len, %ebx          # Количество элементов
    xor %ecx, %ecx          # Обнуление счётчика нечётных

process_number:
    test %ebx, %ebx         # Проверка на завершение
    jz exit_program

    mov (%edi), %eax        # Загрузка числа
    xor %esi, %esi          # Счётчик цифр

    test %eax, %eax         # Обработка нуля
    jz handle_zero

count_digits:
    inc %esi                # Увеличиваем счётчик
    xor %edx, %edx          # Очистка edx для деления
    mov $10, %ebp           # Делитель
    div %ebp                # EAX = EAX / 10
    test %eax, %eax         # Проверка остатка
    jnz count_digits        # Повторяем, если не ноль
    jmp check_odd

handle_zero:
    mov $1, %esi            # Ноль имеет 1 цифру

check_odd:
    test $1, %esi           # Проверяем младший бит
    jz next_element
    inc %ecx                # Увеличиваем результат

next_element:
    add $4, %edi            # Следующий элемент массива
    dec %ebx                # Уменьшаем счётчик
    jmp process_number

exit_program:
    mov $1, %eax            # Системный вызов exit()
    mov %ecx, %ebx          # Возвращаем результат
    int $0x80