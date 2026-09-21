package challenges;

public class ValidateCorporateEmail {
    public static boolean ValidateCorporateEmail(String email) {

        // return email.trim().toLowerCase().endsWith("@exazeit.com"); 
        // we can use this as well

        if (email == null || email.trim().isEmpty() || !email.contains("@")) {
            return false;
        } else {
            email = email.trim();
            int seperatorIndex = email.indexOf("@");
            String dominName = email.substring(seperatorIndex + 1).toLowerCase();

            if (dominName.equals("exazeit.com")) {
                return true;
            } else {
                return false;
            }
        }
    }

    public static void main(String[] args) {
        System.out.println(ValidateCorporateEmail("jaswanth.uppu@exazeit.com"));
    }
}
