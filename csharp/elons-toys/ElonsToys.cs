using System;

class RemoteControlCar
{
    public int Distance = 0;
    public int Battery = 100;
    
    public static RemoteControlCar Buy() => new RemoteControlCar();
    public string DistanceDisplay() => $"Driven {Distance} meters";
    public string BatteryDisplay() => Battery > 0 ? $"Battery at {Battery}%" : $"Battery empty";
    public void Drive() { if (Battery > 0) Distance += 20; Battery -= 1; }
}
