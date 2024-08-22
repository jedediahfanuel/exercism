using System; using System.Globalization;

public enum Location { NewYork, London, Paris }

public enum AlertLevel { Early, Standard, Late }

public static class Appointment
{
    public static DateTime ShowLocalTime(DateTime dtUtc) => dtUtc.ToLocalTime();

    public static DateTime Schedule(string appDateDescript, Location location) => location switch {
    	Location.NewYork => TimeZoneInfo.ConvertTimeToUtc(DateTime.Parse(appDateDescript), TimeZoneInfo.FindSystemTimeZoneById("Eastern Standard Time")), 
        Location.London => TimeZoneInfo.ConvertTimeToUtc(DateTime.Parse(appDateDescript), TimeZoneInfo.FindSystemTimeZoneById("GMT Standard Time")), 
		Location.Paris => TimeZoneInfo.ConvertTimeToUtc(DateTime.Parse(appDateDescript), TimeZoneInfo.FindSystemTimeZoneById("W. Europe Standard Time")) };		

    public static DateTime GetAlertTime(DateTime appointment, AlertLevel alertLevel) => alertLevel switch {
		AlertLevel.Early => appointment.Subtract(TimeSpan.Parse("1.00:00:00")),
		AlertLevel.Standard => appointment.Subtract(TimeSpan.Parse("01:45:00")),
		AlertLevel.Late => appointment.Subtract(TimeSpan.Parse("00:30:00")) };

    public static bool HasDaylightSavingChanged(DateTime dt, Location location) => location switch {
    	Location.NewYork => TimeZoneInfo.FindSystemTimeZoneById("Eastern Standard Time").IsDaylightSavingTime(dt) ^ TimeZoneInfo.FindSystemTimeZoneById("Eastern Standard Time").IsDaylightSavingTime(dt.Subtract(TimeSpan.Parse("7.00:00:00"))), 
        Location.London => TimeZoneInfo.FindSystemTimeZoneById("GMT Standard Time").IsDaylightSavingTime(dt) ^ TimeZoneInfo.FindSystemTimeZoneById("GMT Standard Time").IsDaylightSavingTime(dt.Subtract(TimeSpan.Parse("7.00:00:00"))), 
		Location.Paris => TimeZoneInfo.FindSystemTimeZoneById("W. Europe Standard Time").IsDaylightSavingTime(dt) ^ TimeZoneInfo.FindSystemTimeZoneById("W. Europe Standard Time").IsDaylightSavingTime(dt.Subtract(TimeSpan.Parse("7.00:00:00"))) };

    public static DateTime NormalizeDateTime(string dtStr, Location location) {
		try {
			return location switch { Location.NewYork => DateTime.Parse(dtStr, CultureInfo.CreateSpecificCulture("en-US")), 
	        						 Location.London => DateTime.Parse(dtStr, CultureInfo.CreateSpecificCulture("en-GB")), 
									 Location.Paris => DateTime.Parse(dtStr, CultureInfo.CreateSpecificCulture("fr-FR")) };
		} catch(Exception) { return DateTime.MinValue; }	
	}
}
