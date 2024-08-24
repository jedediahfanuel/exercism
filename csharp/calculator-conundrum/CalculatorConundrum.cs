using System                                                                                                           ;

public static class SimpleCalculator                                                                                   {

    public static string Calculate(int x, int y, string t)                                                             {

        if (operand2 == 0) return "Division by zero is not allowed."                                                   ;

        return operation switch                                                                                        {
             "+" => $"{x} {t} {y} = {x + y}",
             "*" => $"{x} {t} {y} = {x * y}",
             "/" => $"{x} {t} {y} = {x / y}",
              "" => throw new ArgumentException(),
            null => throw new ArgumentNullException(),
               _ => throw new ArgumentOutOfRangeException(),                                                           }; } }
