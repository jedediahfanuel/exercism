public static class CentralBank                                                                                                  {
    public static string DisplayDenomination(long b, long m)                                                                     {
        try   { return checked(b * m).ToString()   ; }
        catch { return "*** Too Big ***"           ; }                                                                           }

    public static string DisplayGDP(float b, float m) => DisplayDenomination((long) b, (long) m)                                 ;

    public static string DisplayChiefEconomistSalary(decimal s, decimal m)                                                       {
        try   { return checked(s * m).ToString()   ; }
        catch { return "*** Much Too Big ***"      ; }                                                                          } }
