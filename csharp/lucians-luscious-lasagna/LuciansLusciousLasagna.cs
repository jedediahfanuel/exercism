class Lasagna
{
    public int ExpectedMinutesInOven()
    {
        return 40;
    }

    public int RemainingMinutesInOven(int current)
    {
        return ExpectedMinutesInOven() - current;
    }

    public int PreparationTimeInMinutes(int layer)
    {
        return 2 * layer;
    }

    public int ElapsedTimeInMinutes(int layer, int minutes)
    {
        return PreparationTimeInMinutes(layer) + minutes;
    }
}
