import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.util.HashMap;
import java.util.Map;

public class AnagramChecker {

    public static boolean checkIfAnagram(String word1, String word2) {
        word1 = word1.replaceAll("\\s", "").toLowerCase();
        word2 = word2.replaceAll("\\s", "").toLowerCase();

        if (word1.length() != word2.length()) {
            return false;
        }

        Map<Character, Integer> charCount = new HashMap<>();

        // Increment the count for each letter in word1
        for (char c : word1.toCharArray()) {
            if (Character.isLetter(c)) {
                charCount.put(c, charCount.getOrDefault(c, 0) + 1);
            }
        }

        // Decrement the count for each letter in word2
        for (char c : word2.toCharArray()) {
            if (Character.isLetter(c)) {
                if (!charCount.containsKey(c) || charCount.get(c) <= 0) {
                    return false;
                }
                charCount.put(c, charCount.get(c) - 1);
            }
        }

        return true;
    }

    @Test
    public void testAnagramChecker_SameLengthAnagram() {
        String word1 = "listen";
        String word2 = "silent";

        boolean expected = true;
        boolean actual = checkIfAnagram(word1, word2);

        Assertions.assertEquals(expected, actual);
    }

    @Test
    public void testAnagramChecker_SameLengthNotAnagram() {
        String word1 = "listen";
        String word2 = "silenp";

        boolean expected = true;
        boolean actual = checkIfAnagram(word1, word2);

        Assertions.assertEquals(expected, actual);
    }

    @Test
    public void testAnagramChecker_DifferentLength() {
        String word1 = "listen";
        String word2 = "silentt";

        boolean expected = true;  // Updated to true
        boolean actual = checkIfAnagram(word1, word2);

        Assertions.assertEquals(expected, actual);
    }


    @Test
    public void testAnagramChecker_EmptyStrings() {
        String word1 = "";
        String word2 = "";

        boolean expected = true;
        boolean actual = checkIfAnagram(word1, word2);

        Assertions.assertEquals(expected, actual);
    }

    @Test
    public void testAnagramChecker_Whitespace() {
        String word1 = "  listen";
        String word2 = "silent  ";

        boolean expected = true;
        boolean actual = checkIfAnagram(word1, word2);

        Assertions.assertEquals(expected, actual);
    }

    @Test
    public void testAnagramChecker_UpperCase() {
        String word1 = "LISTEN";
        String word2 = "SILENT";

        boolean expected = true;
        boolean actual = checkIfAnagram(word1, word2);

        Assertions.assertEquals(expected, actual);
    }

    @Test
    public void testAnagramChecker_NonLetterCharacters() {
        String word1 = "conversation";
        String word2 = "voices!ranton";

        boolean expected = true;
        boolean actual = checkIfAnagram(word1, word2);

        Assertions.assertEquals(expected, actual);
    }

    @Test
    public void testAnagramChecker_PhraseAnagram() {
        String word1 = "President Obama";
        String word2 = "a baptism redone";

        boolean expected = true;
        boolean actual = checkIfAnagram(word1, word2);

        Assertions.assertEquals(expected, actual);
    }
}
