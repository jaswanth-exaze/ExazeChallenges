package challenges;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class MaskEmailAddressTest {
    @Test
    void testEmptyInput(){
        assertEquals(MaskEmailAddress.MaskEmailAddress(""), "invaild input email");
        assertEquals(MaskEmailAddress.MaskEmailAddress("   "), "invaild input email");
    }
    @Test
    void testwithoutAtSign(){
        assertEquals(MaskEmailAddress.MaskEmailAddress("jaswanthgmail.com"),"invaild input email");
    }
    @Test
    void test(){
        assertEquals(MaskEmailAddress.MaskEmailAddress("jaswanth.uppu@gmail.com"), "j***********u@gmail.com");
    }
}
