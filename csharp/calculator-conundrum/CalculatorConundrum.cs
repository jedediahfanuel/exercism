using System                                                                                                           ;

public static class SimpleCalculator                                                                                   {

    public static string Calculate(int x, int y, string t)                                                             {

        if (y == 0) return "Division by zero is not allowed."                                                   ;

        return t switch                                                                                        {
             "+" => $"{x} {t} {y} = {x + y}",
             "*" => $"{x} {t} {y} = {x * y}",
             "/" => $"{x} {t} {y} = {x / y}",
              "" => throw new ArgumentException(),
            null => throw new ArgumentNullException(),
               _ => throw new ArgumentOutOfRangeException(),                                                           }; } }
