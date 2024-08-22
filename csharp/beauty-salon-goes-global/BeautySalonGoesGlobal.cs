using System; using System.Globalization;

public enum Location { NewYork, London, Paris }

public enum AlertLevel { Early, Standard, Late }

public static class Appointment
{
    public static DateTime ShowLocalTime(DateTime dtUtc) => dtUtc.ToLocalTime();

	public static DateTime Schedule(string appointmentDateDescription, Location location) =>
        TimeZoneInfo.ConvertTimeToUtc(DateTime.Parse(appointmentDateDescription), location.ToTimeZone());

	private static TimeZoneInfo ToTimeZone(this Location location) => location switch {
        Location.NewYork => TimeZoneInfo.FindSystemTimeZoneById("America/New_York"),
        Location.London => TimeZoneInfo.FindSystemTimeZoneById("Europe/London"),
        Location.Paris => TimeZoneInfo.FindSystemTimeZoneById("Europe/Paris"),
        _ => throw new ArgumentOutOfRangeException(nameof(location), location, null) };

    public static DateTime GetAlertTime(DateTime appointment, AlertLevel alertLevel) => alertLevel switch {
        AlertLevel.Early => appointment.AddDays(-1),
        AlertLevel.Standard => appointment.AddHours(-1).AddMinutes(-45),
        AlertLevel.Late => appointment.AddMinutes(-30),
        _ => throw new ArgumentOutOfRangeException(nameof(alertLevel), alertLevel, null) };

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
