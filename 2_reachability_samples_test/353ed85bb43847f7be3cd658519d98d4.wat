(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_41495471 (mut i32) (i32.const -1925855414))
(global $global_1707804053 (mut f32) (f32.const -2.7011924810677617e+18))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i64.const 72966632)
    nop
    drop
    (i64.const -1410)
    (i32.const 318)
    (i32.const 212)
    global.set $global_41495471
    f32.reinterpret_i32
    i64.trunc_f32_u
    i64.shl
    i64.ctz
    f32.convert_i64_u
    global.set $global_1707804053
    global.get $global_41495471
    i32.popcnt
    drop
    br 0
)

)