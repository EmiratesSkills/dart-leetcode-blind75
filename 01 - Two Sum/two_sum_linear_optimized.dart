// This solution stores encountered values for quick lookups but doesn’t keep indices.
class Solution {
  List<int> twoSumHashSet(List<int> nums, int target) {
    Set<int> seenNumbers = {}; // Default Set uses LinkedHashMap

    for (int i = 0; i < nums.length; i++) {
      int current = target - nums[i];

      if (seenNumbers.contains(current)) {
        return [nums.indexOf(current), i];
      }

      seenNumbers.add(nums[i]);
    }

    return [];
  }
}
