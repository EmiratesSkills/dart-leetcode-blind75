// This solution uses a hash map for quick lookups.
class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> valueIndexMap = {};

    for (int i = 0; i < nums.length; i++) {
      int current = target - nums[i];

      if (valueIndexMap.containsKey(current)) {
        return [valueIndexMap[current]!, i];
      }

      valueIndexMap[nums[i]] = i;
    }

    return [];
  }
}

 // Time complexity: O(n)