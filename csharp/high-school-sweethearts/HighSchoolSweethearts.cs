using System; using System.Globalization;

public static class HighSchoolSweethearts                                                                                                            {
    public static string DisplaySingleLine(string studentA, string studentB) =>
        string.Format("{0,29} {1} {2,-29}", studentA, "♡", studentB);

    public static string DisplayBanner(string studentA, string studentB) => $"""
		     ******       ******
		   **      **   **      **
		 **         ** **         **
		**            *            **
		**                         **
		**     {studentA} +  {studentB}    **
		 **                       **
		   **                   **
		     **               **
		       **           **
		         **       **
		           **   **
		             ***
		              *
		""";

    public static string DisplayGermanExchangeStudents(string studentA , string studentB, DateTime start, float hours) =>
        string.Format(new CultureInfo("de-DE"),
            "{0} and {1} have been dating since {2:d} - that's {3:N2} hours",
            studentA, studentB, start, hours );                                                                                                      }
