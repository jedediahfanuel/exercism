using System;

static class Badge
{
    public static string Print(int? id, string name, string? department)
    {
        string result = "";
        result += id != null         ? $"[{id}] - "                 : ""        ;
        result +=                      $"{name}"                                ;
        result += department != null ? $" - {department.ToUpper()}" : " - OWNER";
        
        return result;
    }
}
