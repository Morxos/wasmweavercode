(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1971477757 (mut i64) (i64.const 3371421775655619595))
(global $global_1733093689 (mut f32) (f32.const -4.752630764724552e+18))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    (i32.const 1350501730)
    global.get $global_1971477757
    i64.extend32_s
    nop
    i32.wrap_i64
    i32.rotl
    local.get 0
    f32.convert_i64_s
    local.tee 1
    f32.trunc
    f32.sqrt
    f32.sqrt
    i32.reinterpret_f32
    i32.add
    f32.convert_i32_u
    nop
    f64.promote_f32
    f64.nearest
    f64.sqrt
    f64.nearest
    f64.sqrt
    i64.reinterpret_f64
    nop
    local.set 0
    (i32.const 98991)
    f32.convert_i32_u
    ;;INSPECT
    global.set $global_1733093689
)

)