package challenges;

public class MirrorNumber {
    public static boolean MirrorNumber(int x){
        int temp =x;
        int rev=0;
        while(x>0){
            int rem = x%10;
            rev =(rev*10)+rem;
            x=x/10;
        }
        if(rev==temp){
            return true;
        }
        return false;
    }
    public static boolean MirrorNumber(String x){  // this is for string with leading zeros
        
        for(int i=0;i<x.length()/2;i++){
            if(x.charAt(i)!=x.charAt(x.length()-1-i)){
            
                return false;
            }
            
        }
        return true;
    }
}
