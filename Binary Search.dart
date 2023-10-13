///Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.
//
// You must write an algorithm with O(log n) runtime complexity.

/// LEETCODE LINK : https://leetcode.com/problems/binary-search/description/?envType=study-plan-v2&envId=binary-search
void main(List<String> arguments) {

  List<int> nums = [-1,0,3,5,9,12];
  int target = 13;
  print(Solution().search(nums, target));// true

}

class Solution {
  int search(List<int> nums, int target) {
    int start = 0;
    int end = nums.length;
    int middle = nums.length ~/ 2;

    while(start <= end){
      middle = (start + end) ~/ 2;
      if (nums[middle] == target){
        return middle;
      }

      else if(nums[middle] < target && nums[middle] != nums[nums.length-1]){
        start = middle + 1;
      }
      else {
        end = middle - 1;
      }

    }
    return -1;
  }
}