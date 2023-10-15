/// Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
///
/// You must write an algorithm with O(log n) runtime complexity.

/// LEETCODE LINK : https://leetcode.com/problems/search-insert-position/?envType=study-plan-v2&envId=binary-search
void main(List<String> arguments) {

  List<int> nums = [1, 3, 5, 6];
  int target = 2;
  print(Solution().searchInsert(nums, target));// true

}

class Solution {
  int searchInsert(List<int> nums, int target) {
    for (int i = 0; i < nums.length; ++i)
      if (target <= nums[i]) return i;
    return nums.length;
  }
}