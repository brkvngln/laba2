import java.util.Scanner;
import java.util.ArrayList;
public class Main {
    public static int reverseNumber(int num) {
        int reversed = 0;
        while (num != 0) {
            reversed = reversed * 10 + num % 10;
            num /= 10;
        }
        return reversed;
    }
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите числа через пробел: ");
        String input = scanner.nextLine();
        String[] parts = input.split(" ");
        ArrayList<Integer> numbers = new ArrayList<>();
        for (String part : parts) {
            try {
                numbers.add(Integer.parseInt(part));
            } catch (NumberFormatException e) {
                // Пропускаем нечисловые значения
            }
        }
        if (numbers.isEmpty()) {
            System.err.println("Ошибка: введены нечисловые данные");
            System.exit(1);
        }
        StringBuilder result = new StringBuilder();
        for (int num : numbers) {
            result.append(reverseNumber(num)).append(" ");
        }
        System.out.println("Результат: " + result.toString().trim());
    }
}