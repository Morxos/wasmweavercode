(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2441196967 (mut i32) (i32.const -249926237))
(func $run (export "run")
    (local i32 i32 f64)
    (local $temp i32)
    local.get 0
    local.tee 1
    f32.convert_i32_u
    f32.abs
    i64.trunc_f32_u
    i32.wrap_i64
    f32.reinterpret_i32
    i64.trunc_f32_u
    i64.ctz
    (f32.const -1.8045545102919507e-31)
    i32.reinterpret_f32
    i32.eqz
    f32.convert_i32_u
    i64.trunc_f32_u
    i64.popcnt
    i64.sub
    i64.eqz
    i32.extend8_s
    i32.extend8_s
    global.set $global_2441196967
    ;;INSPECT
    nop
    local.get 0
    f64.convert_i32_u
    f64.nearest
    local.tee 2
    f64.trunc
    f64.trunc
    i64.reinterpret_f64
    i64.popcnt
    drop
)

)