void main() {}
String rollingMedium(List<int> input) {
  List<int> result = [];
  List<int> stake = [];
  if (input.isNotEmpty) {
    for (int i = 0; i < input.length; i++) {
      stake.add(input[i]);
      stake.sort();
      int middleindex = stake.length ~/ 2;

      if (i%2==0) {            
        result.add(stake[middleindex]);
      } else {
        result.add( ( stake[middleindex - 1] + stake[middleindex] )~/2);
        // The thing where i did worng is insted of  (left+right)~/2      
        // i did left + right /~2
      }
    }
  }
  return result.join(" ");  
}


// stacke =[5]
// middle = 1/2=0
// result= [5]

// stack = [5,15]
// middle = 2/2=1
// result =[5,5+15/2]=[5,10];

// stack = [1,5,15];
// middle = 3/2=1
// result= [5,10,5]

// stack = [1,3,5,15];
// middle = 4/2 =2
// result = [5,10,5 , 5+3/3] = [5,10,5,4]