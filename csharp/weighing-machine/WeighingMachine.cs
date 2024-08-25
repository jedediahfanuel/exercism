using System;

class WeighingMachine {
    private double weight = 0.0;
    public  double Weight { 
        get { return weight; }
        set { 
            if (value < 0) throw new ArgumentOutOfRangeException();
            weight = value;  }  }

    public WeighingMachine(int precision) => Precision = precision;
    public int    Precision      { get; set; }
    public double TareAdjustment { get; set; } = 5d;

    public string DisplayWeight => $"{ Math.Round(Weight - TareAdjustment, Precision).ToString($"N{Precision}") } kg";
}  
