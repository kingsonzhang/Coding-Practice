function twoSum(nums, sum){
    let dictionary = {};
    for (let i = 0; i < nums.length; i++){
        if (dictionary[nums[i]] != undefined)
            return [dictionary[nums[i]], i];
        else
            dictionary[sum - nums[i]] = i;
    }
}

console.log(twoSum([2, 7, 11, 15], 9));