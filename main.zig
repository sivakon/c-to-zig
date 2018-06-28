const display_char =  @import("display.zig").display_char;
const compute = @import("compute.zig").compute;

pub fn main() void {
    display_char(compute('A'));
}
