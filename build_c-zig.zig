const Builder = @import("std").build.Builder;

pub fn build(b: &Builder) void {
    const exe = b.addCExecutable("main");
    b.addCIncludePath(".");
    exe.addCompileFlags([][]const u8 {
        "-std=c11",
        "-nostdlib"
    });

    const source_files = [][]const u8 {
        //"compute.c",
        "compute_helper.c",
        "display.c",
        "main.c"
    };

    for (source_files) |source| {
        exe.addSourceFile(source);
    }

    const zig_source_files = [][]const u8 {
        "compute.zig",
    };

    for (zig_source_files) |source| {
        const object = b.addObject(source, source);
        exe.addObject(object);
    }

    exe.setOutputPath("./main");
    b.default_step.dependOn(&exe.step);
}
