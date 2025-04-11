import java.util.Scanner;

public class Main {

    public static String compr(String s) {
        if (s == null || s.isEmpty()) {
            return s;
        }

        StringBuilder comp = new StringBuilder();
        int count = 1;

        for (int i = 1; i < s.length(); i++) {
            if (s.charAt(i) == s.charAt(i - 1)) {
                count++;
            } else {
                comp.append(s.charAt(i - 1)).append(count);
                count = 1; // Сбрасываем счетчик
            }
        }

        // Добавляем последний символ и его количество
        comp.append(s.charAt(s.length() - 1)).append(count);

        return comp.toString();
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String input = scanner.nextLine();
        String compres= compr(input);

        // Если сжатая версия не короче исходной, возвращаем исходную строку
        if (compres.length() < input.length()) {
            System.out.println("Сжатая строка: " + compres);
        } else {
            System.out.println("Сжатая строка: " + input);
        }

        scanner.close();
    }
}