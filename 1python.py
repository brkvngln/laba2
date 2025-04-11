def compr(s):
    if not s:
        return s
    comp = ''
    count = 1
    for i in range(1, len(s)):
        if s[i] == s[i - 1]:
            count += 1
        else:
            comp += s[i - 1] + str(count)
            count = 1  # Сбрасываем счетчик
    # добавляем последний символ и его количество
    comp += s[-1] + str(count)
    return comp

# считываем строку от пользователя
S = input("Введите строку: ")
comp = compr(S)
# если сжатая версия не короче исходной, возвращаем исходную строку
if len(comp) < len(S):
    print("Сжатая строка:", comp)
else:
    print("Сжатая строка:", S)
