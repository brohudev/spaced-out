const std = @import("std");
const spacedout = @import("spacedout");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    try spacedout.printMessage(stdout);

    try printAnotherMessage(stdout);
}

fn printAnotherMessage(writer: anytype) !void {
    try writer.print("Another message from main.zig\n", .{});
}
