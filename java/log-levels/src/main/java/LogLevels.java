public class LogLevels {
    
    public static String message(String logLine) {
        return logLine.split(":")[1].strip();
    }

    public static String logLevel(String logLine) {
        return logLine.split("\\]")[0].split("\\[")[1].toLowerCase();
    }

    public static String reformat(String logLine) {
        return message(logLine) + " (" + logLevel(logLine) + ")";
    }
}
