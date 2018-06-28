pub use @import("compute_helper.zig");

export fn compute(a: u8) u8 {
    return compute_helper(a) + 5;
}
