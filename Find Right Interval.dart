/// You are given an array of intervals, where intervals[i] = [starti, endi] and each starti is unique.
///
/// The right interval for an interval i is an interval j such that startj >= endi and startj is minimized. Note that i may equal j.
///
/// Return an array of right interval indices for each interval i. If no right interval exists for interval i, then put -1 at index i.

/// LEETCODE LINK : https://leetcode.com/problems/find-right-interval/description/?envType=study-plan-v2&envId=binary-search
void main(List<String> arguments) {

  List<List<int>> intervals = [[1,2]];

  print(Solution().findRightInterval(intervals));
}

class Solution {
  List<int> findRightInterval(List<List<int>> intervals) {
    int n = intervals.length;
    List<int> result = List.filled(n, -1);
    List<List<int>> sortedIntervals = List.from(intervals);

    for (int i = 0; i < n; i++) {
      sortedIntervals[i].add(i); // Add the original index to each interval
    }

    // Sort intervals based on the start point
    sortedIntervals.sort((a, b) => a[0].compareTo(b[0]));

    for (int i = 0; i < n; i++) {
      int currentEnd = intervals[i][1];

      // Binary search to find the right interval
      int left = 0, right = n - 1;
      while (left <= right) {
        int mid = left + (right - left) ~/ 2;
        int midStart = sortedIntervals[mid][0];

        if (midStart >= currentEnd) {
          result[i] = sortedIntervals[mid][2]; // Original index of the right interval
          right = mid - 1;
        } else {
          left = mid + 1;
        }
      }
    }

    return result;
  }
}