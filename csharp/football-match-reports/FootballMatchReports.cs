using System;

public static class PlayAnalyzer                                                                                       {

    public static string AnalyzeOnField(int shirtNum) => shirtNum switch                                               {
        1               => "goalie",
        2               => "left back",
        3 or 4          => "center back",
        5               => "right back",
        (> 5) and (< 9) => "midfielder",
        9               => "left wing",
        10              => "striker",
        11              => "right wing",
        _ => throw new ArgumentOutOfRangeException(),                                                                  };

    public static string AnalyzeOffField(object report)                                                                {
        switch (report)                                                                                                {
            case int num      : return $"There are {num} supporters at the match."                   ;
            case string str   : return str                                                           ;
            case Injury inj   : return $"Oh no! {inj.GetDescription()} Medics are on the field."     ;
            case Incident inc : return inc.GetDescription()                                          ;
            case Manager man  : return man.Club is null ? $"{man.Name}" : $"{man.Name} ({man.Club})" ;
            default           : throw new ArgumentException()                                        ;
                                                                                                                       } } }
