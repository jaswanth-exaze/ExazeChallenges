package challenges;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

public class FindFirstFailedCheckTest {

    @Test 
    void VaildTests(){
        assertEquals(3, FindFirstFailedCheck.FindFirstFailedCheck("PASS PASS FAIL PASS"));
        assertEquals(4, FindFirstFailedCheck.FindFirstFailedCheck("PASS PASS PASS FAIL FAIL"));
        assertEquals(1, FindFirstFailedCheck.FindFirstFailedCheck("FAIL PASS PASS PASS FAIL"));
    }
    void InvaildTests(){
        assertEquals(0,FindFirstFailedCheck.FindFirstFailedCheck("PASS PASS PASS PASS"));
    }
}