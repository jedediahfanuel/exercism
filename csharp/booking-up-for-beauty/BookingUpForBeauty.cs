using System;

static class Appointment
{
    private static string[] Months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
    
    public static DateTime Schedule(string appointmentDateDescription)
    {
        string[] values = appointmentDateDescription.Split(' ');
        string[] date; string[] time;

        int yy, mo, dd, hh, mm, ss;

        switch (values.Length)
        {
            case 2:
                date = values[0].Split('/');
                time = values[1].Split(':');

                yy = int.Parse(date[2]);
                mo = int.Parse(date[0]);
                dd = int.Parse(date[1]);

                hh = int.Parse(time[0]);
                mm = int.Parse(time[1]);
                ss = int.Parse(time[2]);

                break;
            case 4:
                time = values[3].Split(':');

                yy = int.Parse(values[2]);
                mo = Array.IndexOf(Months, values[0]) + 1;
                dd = int.Parse(values[1][..(values[1].Length - 1)]);

                hh = int.Parse(time[0]);
                mm = int.Parse(time[1]);
                ss = int.Parse(time[2]);

                break;
            default:
                time = values[4].Split(':');

                yy = int.Parse(values[3]);
                mo = Array.IndexOf(Months, values[1]) + 1;
                dd = int.Parse(values[2][..(values[2].Length - 1)]);

                hh = int.Parse(time[0]);
                mm = int.Parse(time[1]);
                ss = int.Parse(time[2]);

                break;
        }

        return new DateTime(yy,mo,dd,hh,mm,ss);
    }

    public static bool HasPassed(DateTime appointmentDate) => appointmentDate.CompareTo(DateTime.Now) < 0; 

    public static bool IsAfternoonAppointment(DateTime appointmentDate) => appointmentDate.Hour > 11 && appointmentDate.Hour < 18;

    public static string Description(DateTime appointmentDate) => $"You have an appointment on {appointmentDate}.";

    public static DateTime AnniversaryDate()
    {
        throw new NotImplementedException("Please implement the (static) Appointment.AnniversaryDate() method");
    }
}
