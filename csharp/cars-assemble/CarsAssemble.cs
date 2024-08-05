using System;

static class AssemblyLine
{
    public static double SuccessRate(int speed) => speed switch
    {
          0 => 0.00,
        < 5 => 1.00,
        < 9 => 0.90,
          9 => 0.80,
          _ => 0.77,
    };
    
    public static double ProductionRatePerHour(int speed) =>
        SuccessRate(speed) * speed * 221;

    public static int WorkingItemsPerMinute(int speed) =>
        (int) ProductionRatePerHour(speed) / 60;
}
