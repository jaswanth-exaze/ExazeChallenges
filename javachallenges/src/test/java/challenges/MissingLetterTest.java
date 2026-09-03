package challenges;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class MissingLetterTest {
    @Test
    void testEmptyString(){
        assertEquals(MissingLetter.MissingLetter(""), "invalid input");
    }
    @Test
    void testWhitespaces(){
        assertEquals(MissingLetter.MissingLetter(" "), "invalid input");
        assertEquals(MissingLetter.MissingLetter("  "), "invalid input");
        assertEquals(MissingLetter.MissingLetter("      "), "invalid input");
    }
    @Test
    void testMissingletter(){
        assertEquals(MissingLetter.MissingLetter("abde"), "c");
        assertEquals(MissingLetter.MissingLetter("abzde"), "c");
        assertEquals(MissingLetter.MissingLetter("abce"), "d");
    }
    @Test
    void testNonMissingLetters(){
        assertEquals(MissingLetter.MissingLetter("abcde"), "no missing letters");
        assertEquals(MissingLetter.MissingLetter("xyz"), "no missing letters");
    }
    
}
