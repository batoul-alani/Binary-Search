/// Given a m x n matrix grid which is sorted in non-increasing order both row-wise and column-wise, return the number of negative numbers in grid.
///
/// LEETCODE LINK : https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/description/?envType=study-plan-v2&envId=binary-search
void main(List<String> arguments) {

  List<List<int>> grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]];

  print(Solution().countNegatives(grid));
}

class Solution {
  int countNegatives(List<List<int>> grid) {
    int result = 0;
    for(int rowCount =0 ; rowCount< grid.length; rowCount++){
      for(int columnCount = 0 ; columnCount< grid[rowCount].length; columnCount++){
        if(grid[rowCount][columnCount]<0){
          result++;
        }
      }
    }
    return result;
  }
}