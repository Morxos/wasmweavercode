(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_1010079713 8 funcref)
(global $global_89643284 (mut f32) (f32.const 4.6384855148428e+18))
(global $global_2303090184 (mut i64) (i64.const 8694464647036153966))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    ;;FLAG_0
    (f32.const -2.126469158444292e-38)
    global.set $global_89643284
    local.get 0
    (i32.const 300)
    i32.shr_s
    local.get 0
    (i32.const -422717784)
    i32.shr_u
    f32.reinterpret_i32
    (i64.const 67514)
    global.set $global_2303090184
    f64.promote_f32
    nop
    f64.floor
    i32.trunc_f64_u
    i32.rotl
    i32.popcnt
    table.get $tab_1010079713
    drop
    (f32.const 2.4906600836473064e-24)
    f32.sqrt
    i32.trunc_f32_u
    f64.convert_i32_u
    f64.floor
    i64.trunc_f64_s
    local.set 1
    br 0
)

)