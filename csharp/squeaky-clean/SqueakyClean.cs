using System; using System.Text;

public static class Identifier                                                                                          {

    public static string Clean(string identifier)                                                                       {

        StringBuilder sb = new StringBuilder();
        bool camel = false;

        foreach(char c in identifier)                                                                                   {

            if (c.Equals(' '))                                                                                          {
                sb.Append('_');                                                                                         }

            else if (Char.IsControl(c))                                                                                 {
                sb.Append("CTRL");                                                                                      }

            else if (camel)                                                                                             {
                sb.Append(Char.ToUpper(c));                                                                             }

            else if (Char.IsLetter(c) && !Char.IsBetween(c, 'α', 'ω'))                                                  {
                sb.Append(c);                                                                                           }

            camel = c.Equals('-');                                                                                      }

        return sb.ToString();                                                                                           } }
