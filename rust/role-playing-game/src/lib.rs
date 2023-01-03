pub struct Player {
    pub health: u32,
    pub mana: Option<u32>,
    pub level: u32,
}

impl Player {
    pub fn revive(&self) -> Player {
        let mut mana = None;
        if self.level > 9 {
            mana = Some(100);
        }
        Player {
            health: 100,
            mana,
            level: self.level,
        }
    }

    pub fn cast_spell(&mut self, mana_cost: u32) -> u32 {}
}
