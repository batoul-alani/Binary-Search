/// Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.
//
/// If target is not found in the array, return [-1, -1].
///
/// You must write an algorithm with O(log n) runtime complexity.
/// LEETCODE LINK : https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/description/?envType=study-plan-v2&envId=binary-search
void main(List<String> arguments) {

  List<int> nums = [3, 3, 3];
  int target = 3;

  print(Solution().searchRange(nums, target));
}

class Solution {
  List<int> searchRange(List<int> nums, int target) {
    List<int> result = [];


    int startPosition = -1;
    int endPosition = -1;

    for(int i=0; i<nums.length; i++){

      if(target == nums[i] && startPosition == -1){

        startPosition = i;
      }
      if(target == nums[i] && i+1 <= nums.length -1 && target!=nums[i+1] ) {
        endPosition = i;
      }else if(target == nums[nums.length-1]){
        endPosition = nums.length-1;
      }
    }

    result.add(startPosition);
    result.add(endPosition);

    if(result.length == 1 ){
      result.add(result[0]);
    }
    return result;
  }
}