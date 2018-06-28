const Builder = @import("std").build.Builder;

pub fn build(b: &Builder) void {
    const exe = b.addExecutable("main", "main.zig");
    
    exe.setOutputPath("./main");
    b.default_step.dependOn(&exe.step);    
}
