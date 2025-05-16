(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_640392905 (mut i32) (i32.const -320928428))
(func $run (export "run")
    (local f32 i32 f64)
    (local $temp i32)
    ;;INSPECT
    local.get 0
    f32.ceil
    i64.trunc_f32_s
    i64.popcnt
    i64.eqz
    local.tee 1
    f64.convert_i32_s
    f64.trunc
    f64.sqrt
    f64.trunc
    f64.trunc
    f64.abs
    drop
    (f32.const 1.4589261487770612e+26)
    f64.promote_f32
    f64.sqrt
    f64.sqrt
    f64.nearest
    local.set 2
    local.get 0
    f32.trunc
    i32.reinterpret_f32
    i32.clz
    i32.clz
    f32.reinterpret_i32
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.reinterpret_f32
    global.set $global_640392905
)

)