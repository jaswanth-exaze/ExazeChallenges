package challenges;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class WordCountTest {

    @Test
    void testSingleWord() {
        assertEquals(1, WordCount.Word_count("kjdbv"));
    }

    @Test
    void testMultipleWords() {
        assertEquals(3, WordCount.Word_count("Java is easy"));
    }

    @Test
    void testEmptyString() {
        assertEquals(0, WordCount.Word_count(""));
    }

    @Test
    void testSpacesOnly() {
        assertEquals(0, WordCount.Word_count("   "));
    }

    @Test
    void testLeadingAndTrailingSpaces() {
        assertEquals(3, WordCount.Word_count("  Java   is easy  "));
    }
}