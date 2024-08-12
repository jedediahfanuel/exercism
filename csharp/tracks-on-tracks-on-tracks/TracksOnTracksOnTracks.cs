using System.Linq; using System.Collections.Generic;

public static class Languages {
    public static List<string> NewList() => new List<string>();

    public static List<string> GetExistingLanguages() => new List<string>{"C#", "Clojure", "Elm"};

    public static List<string> AddLanguage(List<string> lang, string l) => lang.Append(l).ToList();

    public static int CountLanguages(List<string> lang) => lang.Count;

    public static bool HasLanguage(List<string> lang, string l) => lang.Contains(l);

    public static List<string> ReverseList(List<string> lang) => lang.Reverse<string>().ToList();

    public static bool IsExciting(List<string> lang) {
        if (!lang.Any()) return false;
        if (lang.First() == "C#") return true;
        if (lang.Count == 2 || lang.Count == 3 && lang.Contains("C#"))
            return true; return false; }

    public static List<string> RemoveLanguage(List<string> lang, string l) {
        lang.Remove(l);
        return lang; }

    public static bool IsUnique(List<string> lang) => lang.Count == lang.Distinct().ToList().Count; }
