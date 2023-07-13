import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class NonRepeatingCharacterFinder {

    public static char findFirstNonRepeatingCharacter(String str) {
        for (int i = 0; i < str.length(); i++) {
            char c = str.charAt(i);
            if (str.indexOf(c) == str.lastIndexOf(c)) {
                return c;
            }
        }
        return '\0';
    }

    @Test
    public void testFindFirstNonRepeatingCharacter_NonRepeatingCharacterPresent() {
        String str = "abcdefghijab";
        char expected = 'c';

        char result = findFirstNonRepeatingCharacter(str);

        Assertions.assertEquals(expected, result);
    }

    @Test
    public void testFindFirstNonRepeatingCharacter_AllCharactersRepeating() {
        String str = "aabbccdd";
        char expected = '\0';

        char result = findFirstNonRepeatingCharacter(str);

        Assertions.assertEquals(expected, result);
    }

    @Test
    public void testFindFirstNonRepeatingCharacter_EmptyString() {
        String str = "";
        char expected = '\0';

        char result = findFirstNonRepeatingCharacter(str);

        Assertions.assertEquals(expected, result);
    }

    @Test
    public void testFindFirstNonRepeatingCharacter_SingleCharacter() {
        String str = "a";
        char expected = 'a';

        char result = findFirstNonRepeatingCharacter(str);

        Assertions.assertEquals(expected, result);
    }
}
