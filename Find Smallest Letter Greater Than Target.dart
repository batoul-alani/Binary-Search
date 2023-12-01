/// You are given an array of characters letters that is sorted in non-decreasing order, and a character target. There are at least two different characters in letters.
///
/// Return the smallest character in letters that is lexicographically greater than target. If such a character does not exist, return the first character in letters.
/// LEETCODE LINK : https://leetcode.com/problems/find-smallest-letter-greater-than-target/description/?envType=study-plan-v2&envId=binary-search
void main(List<String> arguments) {

  List<String> letters = ["c","f","j"];
  String target = "a";

  print(Solution().nextGreatestLetter(letters, target));
}

class Solution {
  String nextGreatestLetter(List<String> letters, String target) {
    List<int> values = [];
    for(int i=0; i< letters.length; i++){
      values.add(letters[i].codeUnitAt(0));
    }
    int targetValue = target.codeUnitAt(0);

    String result = "";
    while(result == ""){
      if(letters.contains(target) && target != letters[letters.length-1]){
        for(int i =0; i< values.length; i++){
          if(targetValue<values[i]){
            result = String.fromCharCode(values[i]);
            return result;
          }
        }}
        else if(letters.contains(target) && target == letters[letters.length-1]){
        result = String.fromCharCode(values[0]);
        return result;

      }
      else if(values[values.length-1]<targetValue){
        result = String.fromCharCode(values[0]);
        return result;
      }
      else{
        for(int i =0; i< values.length; i++){
          if(targetValue<values[i]){
            result = String.fromCharCode(values[i]);
            return result;
          }
        }
      }
      return result;
    }

    return result;
  }
}