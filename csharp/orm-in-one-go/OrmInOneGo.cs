using System;

public class Orm {
    private Database database;

    public Orm(Database database) => this.database = database;

    public void Write(string data) {
        using var db = this.database;
        try {
            database.BeginTransaction();
            database.Write(data);
            database.EndTransaction();
        }
        catch (Exception ex) { throw ex;           }
        finally              { database.Dispose(); }
    }

    public bool WriteSafely(string data) {
        try {
            Write(data);
            return true;
        }
        catch { return false; }
    }
}
