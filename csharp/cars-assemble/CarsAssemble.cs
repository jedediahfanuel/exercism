using System;

static class AssemblyLine
{
    public static double SuccessRate(int speed) => speed switch
    {
          0 => 0   ,
        < 5 => 1   ,
        < 9 =>  .9 ,
          9 =>  .8 ,
          _ =>  .77,
    };
    
    public static double ProductionRatePerHour(int speed) =>
        SuccessRate(speed) * speed * 221;

    public static int WorkingItemsPerMinute(int speed) =>
        (int) ProductionRatePerHour(speed) / 60;
}
