const warn = @import("std").debug.warn;

pub fn display_char(c: u8) void {
    warn("{c}\n", c);
}
