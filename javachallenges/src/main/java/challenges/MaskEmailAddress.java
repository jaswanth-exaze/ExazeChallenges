package challenges;

public class MaskEmailAddress {
    public static String MaskEmailAddress(String input) {
        input=input.trim();
        if(!input.isEmpty() && input.contains("@")){
            int seperatorIndex = input.indexOf("@");
            return input.substring(0,1)
            +"*".repeat(seperatorIndex-2)
            +input.substring(seperatorIndex-1,seperatorIndex)
            +input.substring(seperatorIndex,input.length());
        }
        else{
            return "invaild input email";
        }
    }
}
