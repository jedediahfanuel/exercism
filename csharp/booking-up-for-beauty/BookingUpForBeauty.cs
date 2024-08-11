using System;

static class Appointment {
    private static string[] Months = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
    
    public static DateTime Schedule(string appointmentDateDescription) {
        string[] values = appointmentDateDescription.Split(' ');
        string[] date, time;

        int yy, mo, dd, hh, mm, ss;

        switch (values.Length) {
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
                formattedDate(values, 3);
                break;
            default:
                formattedDate(values, 4);
                break;
        }

        void formattedDate(string[] val, int i) {
            time = val[i].Split(':');

            yy = int.Parse(val[i - 1]);
            mo = Array.IndexOf(Months, val[i - 3]) + 1;
            dd = int.Parse(val[i - 2][..(val[i - 2].Length - 1)]);

            hh = int.Parse(time[0]);
            mm = int.Parse(time[1]);
            ss = int.Parse(time[2]);      
        }

        return new DateTime(yy,mo,dd,hh,mm,ss);
    }

    public static bool HasPassed(DateTime appointmentDate) => appointmentDate.CompareTo(DateTime.Now) < 0; 

    public static bool IsAfternoonAppointment(DateTime appointmentDate) => appointmentDate.Hour > 11 && appointmentDate.Hour < 18;

    public static string Description(DateTime appointmentDate) => $"You have an appointment on {appointmentDate}.";

    public static DateTime AnniversaryDate() => new DateTime(DateTime.Now.Year, 9, 15);
}
