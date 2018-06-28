pub use @import("compute_helper.zig");

pub fn compute(a: u8) u8 {
    return compute_helper(a) + 5;
}
