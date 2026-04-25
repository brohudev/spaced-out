pub const NO_SELECTION: u32 = 0xffffffff;
pub const ASTEROID_COUNT: u32 = 9;
pub const STARTING_CREDITS: u32 = 100;
pub const UPGRADE_COST: u32 = 50;
pub const BASE_SELL_PRICE: u32 = 10;

pub const StatusCode = enum(u32) {
    ready = 0,
    asteroid_selected = 1,
    invalid_asteroid = 2,
    no_asteroid_selected = 3,
    mined = 4,
    no_cargo = 5,
    sold = 6,
    upgrade_bought = 7,
    not_enough_credits = 8,
    turn_advanced = 9,
};

pub const GameState = struct {
    credits: u32 = STARTING_CREDITS,
    cargo: u32 = 0,
    selected_asteroid_index: u32 = NO_SELECTION,
    turn: u32 = 1,
    upgrade_level: u32 = 0,
    last_status: StatusCode = .ready,

    pub fn selectAsteroid(self: *GameState, index: u32) StatusCode {
        if (index >= ASTEROID_COUNT) {
            self.last_status = .invalid_asteroid;
            return self.last_status;
        }

        self.selected_asteroid_index = index;
        self.last_status = .asteroid_selected;
        return self.last_status;
    }

    pub fn mine(self: *GameState) StatusCode {
        if (self.selected_asteroid_index == NO_SELECTION) {
            self.last_status = .no_asteroid_selected;
            return self.last_status;
        }

        // TODO: Replace this flat yield with asteroid properties, difficulty, and upgrade effects.
        const mined_amount = 1 + self.upgrade_level;
        self.cargo += mined_amount;
        self.last_status = .mined;
        return self.last_status;
    }

    pub fn sell(self: *GameState) StatusCode {
        if (self.cargo == 0) {
            self.last_status = .no_cargo;
            return self.last_status;
        }

        // TODO: Replace this fixed price with pricing and market tick logic.
        self.credits += self.cargo * BASE_SELL_PRICE;
        self.cargo = 0;
        self.last_status = .sold;
        return self.last_status;
    }

    pub fn buyUpgrade(self: *GameState) StatusCode {
        if (self.credits < UPGRADE_COST) {
            self.last_status = .not_enough_credits;
            return self.last_status;
        }

        self.credits -= UPGRADE_COST;
        self.upgrade_level += 1;
        self.last_status = .upgrade_bought;

        // TODO: Decide what upgrades affect: mining yield, cargo capacity, sell price, etc.
        return self.last_status;
    }

    pub fn nextTurn(self: *GameState) StatusCode {
        self.turn += 1;
        self.last_status = .turn_advanced;

        // TODO: Advance market prices, asteroid depletion, random events, and upkeep here.
        return self.last_status;
    }
};

pub fn statusText(status: StatusCode) []const u8 {
    return switch (status) {
        .ready => "Ready.",
        .asteroid_selected => "Asteroid selected.",
        .invalid_asteroid => "That asteroid index is not available.",
        .no_asteroid_selected => "Select an asteroid before mining.",
        .mined => "Mining complete.",
        .no_cargo => "Cargo hold is empty.",
        .sold => "Cargo sold.",
        .upgrade_bought => "Upgrade purchased.",
        .not_enough_credits => "Not enough credits for that upgrade.",
        .turn_advanced => "Turn advanced.",
    };
}
