pub struct Player {
    pub health: u32,
    pub mana: Option<u32>,
    pub level: u32,
}

impl Player {
    pub fn revive(&self) -> Option<Player> {
        if self.health > 0 {
            return None;
        }

        let mut mana = None;

        if self.level > 9 {
            mana = Some(100);
        }

        Some(Player {
            health: 100,
            mana,
            level: self.level,
        })
    }

    pub fn cast_spell(&mut self, mana_cost: u32) -> u32 {
        let mut damage: u32 = 0;

        match self.mana {
            None => {
                self.health -= mana_cost;
            }
            Some(n) => {
                if n >= mana_cost {
                    damage = mana_cost * 2;
                    self.mana = Some(self.mana.unwrap() - mana_cost);
                }
            }
        }

        damage
    }
}
