const warn = @import("std").debug.warn;

export fn display_char(c: u8) void {
    warn("{c}\n", c);
}
