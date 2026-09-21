package challenges;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class ValidateCorporateEmailTest {
    @Test
    void checkEmpty() {
        assertEquals(false, ValidateCorporateEmail.ValidateCorporateEmail(""));
    }
    @Test
    void checkInvalide() {
        assertEquals(false, ValidateCorporateEmail.ValidateCorporateEmail(null));
        assertEquals(false, ValidateCorporateEmail.ValidateCorporateEmail("jaswanth"));
        assertEquals(false, ValidateCorporateEmail.ValidateCorporateEmail("     jaswanth      "));
        assertEquals(false, ValidateCorporateEmail.ValidateCorporateEmail("jaswanth.gmail.com"));
        assertEquals(false, ValidateCorporateEmail.ValidateCorporateEmail("jaswanth.uppu@gmail.com"));
        assertEquals(false, ValidateCorporateEmail.ValidateCorporateEmail("jaswanth.uppu.exazeit.com"));
    }
    @Test 
    void VaildTests(){
        assertEquals(true, ValidateCorporateEmail.ValidateCorporateEmail("jaswanth.uppu@exazeit.com"));
        assertEquals(true, ValidateCorporateEmail.ValidateCorporateEmail("    jaswanth.uppu@exazeit.com   "));
        assertEquals(true, ValidateCorporateEmail.ValidateCorporateEmail("jaswanth.uppu@ExazeIt.com"));
    }
}
