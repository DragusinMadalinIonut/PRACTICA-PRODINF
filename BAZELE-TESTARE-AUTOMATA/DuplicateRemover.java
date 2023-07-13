import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.util.Arrays;
import java.util.List;

public class DuplicateRemover {

    public static List<Integer> removeDuplicates(List<Integer> list) {
        return list.stream().distinct().toList();
    }

    @Test
    public void testRemoveDuplicates_DuplicatesPresent() {
        List<Integer> list = Arrays.asList(1, 2, 1, 5, 1, 9, 9);
        List<Integer> expected = Arrays.asList(1, 2, 5, 9);

        List<Integer> result = removeDuplicates(list);
        System.out.println("Result: " + result);

        Assertions.assertEquals(expected, result);
    }

    @Test
    public void testRemoveDuplicates_NoDuplicates() {
        List<Integer> list = Arrays.asList(1, 2, 3, 4, 5);
        List<Integer> expected = Arrays.asList(1, 2, 3, 4, 5);

        List<Integer> result = removeDuplicates(list);
        System.out.println("Result: " + result);

        Assertions.assertEquals(expected, result);
    }

    @Test
    public void testRemoveDuplicates_EmptyList() {
        List<Integer> list = List.of();
        List<Integer> expected = List.of();

        List<Integer> result = removeDuplicates(list);
        System.out.println("Result: " + result);

        Assertions.assertEquals(expected, result);
    }

    @Test
    public void testRemoveDuplicates_SingleElement() {
        List<Integer> list = List.of(7);
        List<Integer> expected = List.of(7);

        List<Integer> result = removeDuplicates(list);
        System.out.println("Result: " + result);

        Assertions.assertEquals(expected, result);
    }
}
