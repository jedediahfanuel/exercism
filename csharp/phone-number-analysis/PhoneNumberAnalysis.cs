using System;

public static class PhoneNumber
{
    public static (bool IsNewYork, bool IsFake, string LocalNumber) Analyze(string phoneNumber)
    {
        var nums = phoneNumber.Split("-");
        return (nums[0] == "212", nums[1] == "555", nums[2]);
    }

    // public static (bool IsNewYork, bool IsFake, string LocalNumber) Analyze(string phoneNumber) =>
    //     // we don't care about validating input for this one
    //     phoneNumber.Split('-') switch { var tup => (tup[0] == "212", tup[1] == "555", tup[2]) };

    public static bool IsFake((bool IsNewYork, bool IsFake, string LocalNumber) phoneNumberInfo) =>
        phoneNumberInfo.IsFake;
}
