package challenges;

import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

public class FirstNonRepeatingCharacterTest {
    @Test
    void NullTest() {
        assertEquals("Invalid Input", FirstNonRepeatingCharacter.FirstNonRepeatingCharacter(null));
    }

    @Test
    void SpacesTest() {
        assertEquals("Invalid Input", FirstNonRepeatingCharacter.FirstNonRepeatingCharacter(" "));
        assertEquals("Invalid Input", FirstNonRepeatingCharacter.FirstNonRepeatingCharacter("   "));
    }

    @Test
    void NonLowercaseTest() {
        assertEquals("Invalid Input", FirstNonRepeatingCharacter.FirstNonRepeatingCharacter("A"));
        assertEquals("Invalid Input", FirstNonRepeatingCharacter.FirstNonRepeatingCharacter("abc erfe")  ,"space Included so invalid");
        assertEquals("Invalid Input", FirstNonRepeatingCharacter.FirstNonRepeatingCharacter("abcAerfe"), "UpperCase Included so invalid");
        assertEquals("Invalid Input", FirstNonRepeatingCharacter.FirstNonRepeatingCharacter("a.bcerfe"),  ". character Included so invalid");
    }
    @Test
    void DistinctInput(){
        assertEquals("a", FirstNonRepeatingCharacter.FirstNonRepeatingCharacter("abcdefgh"));
        assertEquals("z", FirstNonRepeatingCharacter.FirstNonRepeatingCharacter("zbcdefgha"));
    }
    @Test
    void SingleCharInput(){
        assertEquals("a", FirstNonRepeatingCharacter.FirstNonRepeatingCharacter("a"));
        assertEquals("z", FirstNonRepeatingCharacter.FirstNonRepeatingCharacter("z"));
    }
    @Test
    void WithWhitespace(){
        assertEquals("a", FirstNonRepeatingCharacter.FirstNonRepeatingCharacter("   abcd  "));
        assertEquals("z", FirstNonRepeatingCharacter.FirstNonRepeatingCharacter("    z    "));
    }
    @Test 
    void LongInput(){
         assertEquals("z", FirstNonRepeatingCharacter.FirstNonRepeatingCharacter("   uababcwncinubbviebvbewfaaaabbbbdddcccvgvgvgtftftwdwdvgvcfctctcfebeivcijejeiejfejz    "));
         assertEquals("y", FirstNonRepeatingCharacter.FirstNonRepeatingCharacter("   aabbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxyzz    "));
    }

}
