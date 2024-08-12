abstract class Character {
    protected readonly string charType;

    protected Character(string characterType) => this.charType = characterType;

    public virtual bool Vulnerable() => false;
    public abstract int DamagePoints(Character target);
    public override string ToString() => $"Character is a {this.charType}";
}

class Warrior : Character {
    public Warrior() : base("Warrior") {}

    public override int DamagePoints(Character target) => target.Vulnerable() ? 10 : 6; }

class Wizard : Character {
    private bool prepared = false;

    public Wizard() : base("Wizard") {}

    public void PrepareSpell() => this.prepared = true;
    public override int DamagePoints(Character target) => this.prepared ? 12 : 3;
    public override bool Vulnerable() => !prepared; }
