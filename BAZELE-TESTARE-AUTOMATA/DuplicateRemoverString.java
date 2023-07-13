public class DuplicateRemoverString {
    public static String removeDuplicates(String input) {
        StringBuilder result = new StringBuilder();
        for (int i = 0; i < input.length(); i++) {
            char currentChar = input.charAt(i);
            if (i == 0 || currentChar != input.charAt(i - 1)) {
                result.append(currentChar);
            }
        }
        return result.toString();
    }

    public static void main(String[] args) {
        testRemoveDuplicates("ABBCCCCCBBAB", "ABCBAB");
        testRemoveDuplicates("Hello", "Helo");
        testRemoveDuplicates("Mississippi", "Misp");
        testRemoveDuplicates("AAAAA", "A");
        testRemoveDuplicates("", "");
    }

    public static void testRemoveDuplicates(String input, String expectedOutput) {
        String result = removeDuplicates(input);
        System.out.println("Input: " + input);
        System.out.println("Expected output: " + expectedOutput);
        System.out.println("Actual output: " + result);
        System.out.println("Test passed: " + result.equals(expectedOutput));
        System.out.println();
    }
}
