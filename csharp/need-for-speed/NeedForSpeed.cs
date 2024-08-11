class RemoteControlCar {
    private int battery = 100; private int distans = 0; public  int speed; public  int drain;

    public RemoteControlCar(int speed, int drain) { this.speed = speed; this.drain = drain; }
    public bool BatteryDrained() => this.battery < this.drain;
    public int  DistanceDriven() => this.distans;

    public void Drive() {
        if (!this.BatteryDrained()) this.distans += this.speed;
        if (!this.BatteryDrained()) this.battery -= this.drain; }

    public static RemoteControlCar Nitro() => new (50, 4); }

class RaceTrack {
    private int length;

    public RaceTrack(int length) => this.length = length;
    public bool TryFinishTrack(RemoteControlCar car) => (float) this.length / car.speed <= (float) 100 / car.drain; }
