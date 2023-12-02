class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        length = len(nums)

        for i in range (length - 1):
            for j in range (i+1, length):
                if nums[i] + nums[j] == target:
                    new_list = i, j
                    return list(new_list)
        return -1