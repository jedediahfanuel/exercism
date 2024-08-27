using System;

public enum State { TransactionStarted, DataWritten, Invalid, Closed }

public class Orm : IDisposable {
    private Database database;

    public Orm(Database database) { this.database = database; }

    public void Begin() {
           try   { this.database.BeginTransaction(); }
           catch { Dispose(); } }

    public void Write(string data) {
           try   { this.database.Write(data); }
           catch { Dispose(); } }

    public void Commit() {
           try   { this.database.EndTransaction(); }
           catch { Dispose(); } }

    public void Dispose() { this.database.Dispose(); } }
