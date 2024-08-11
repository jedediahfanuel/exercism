using System.Linq;

class BirdCount {
    private int[] birdsPerDay;

    public BirdCount(int[] birdsPerDay) => this.birdsPerDay = birdsPerDay;

    public static int[] LastWeek() => new int[] { 0, 2, 5, 3, 7, 8, 4 };

    public int Today() => birdsPerDay.Last();

    // public void IncrementTodaysCount() => birdsPerDay[6]++;
    // ^ berarti index from end
    public void IncrementTodaysCount() => birdsPerDay[^1]++;

    // public bool HasDayWithoutBirds() => birdsPerDay.Any(c => c == 0);
    public bool HasDayWithoutBirds() => birdsPerDay.Contains(0);

    public int CountForFirstDays(int numberOfDays) => birdsPerDay[..numberOfDays].Sum();

    public int BusyDays() => birdsPerDay.Count(c => c > 4);
}
