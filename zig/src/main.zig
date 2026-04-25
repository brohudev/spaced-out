const std = @import("std");
const sim = @import("sim.zig");

pub fn main() !void {
    const stdout = std.fs.File.stdout().deprecatedWriter();
    var game: sim.GameState = .{};

    try stdout.print("spaced-out core simulation\n", .{});
    try stdout.print("==========================\n\n", .{});

    try printState(stdout, game);

    logAction(stdout, game.selectAsteroid(1)) catch return;
    try printState(stdout, game);

    logAction(stdout, game.mine()) catch return;
    logAction(stdout, game.mine()) catch return;
    logAction(stdout, game.sell()) catch return;
    logAction(stdout, game.buyUpgrade()) catch return;
    logAction(stdout, game.nextTurn()) catch return;

    try printState(stdout, game);

    try stdout.print("\nTODO: Replace this scripted demo with an interactive CLI, then a TUI.\n", .{});
}

fn logAction(writer: anytype, status: sim.StatusCode) !void {
    try writer.print("> {s}\n", .{sim.statusText(status)});
}

fn printState(writer: anytype, game: sim.GameState) !void {
    const selected_text = if (game.selected_asteroid_index == sim.NO_SELECTION) "none" else "selected";

    try writer.print(
        \\Credits: {d}
        \\Cargo: {d}
        \\Turn: {d}
        \\Upgrade Level: {d}
        \\Selected Asteroid: {s}
        \\
        \\
    , .{
        game.credits,
        game.cargo,
        game.turn,
        game.upgrade_level,
        selected_text,
    });
}
