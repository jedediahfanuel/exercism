using System;
enum AccountType { Guest, User, Moderator }

[Flags]
enum Permission : byte                                                                                                                               { 
    None   = 0b_00000000                                                                                                                             ,
    Read   = 0b_00000001                                                                                                                             , 
    Write  = 0b_00000010                                                                                                                             , 
    Delete = 0b_00000100                                                                                                                             , 
    All    = 0b_00000111                                                                                                                             , }

static class Permissions                                                                                                                             {
    public static Permission Default(AccountType accountType) => accountType switch                                                                  {
            AccountType.Guest => Permission.Read                                                                                                     ,
             AccountType.User => Permission.Read | Permission.Write                                                                                  ,
        AccountType.Moderator => Permission.Read | Permission.Write | Permission.Delete                                                              ,
                            _ => Permission.None                                                                                                     , };

    public static Permission Grant  (Permission current, Permission grant ) =>  current |   grant                                                    ;
    public static Permission Revoke (Permission current, Permission revoke) =>  current & ~revoke                                                    ;
    public static bool       Check  (Permission current, Permission check ) => (current |   check) == current                                        ; }
