(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2780467772 (mut f32) (f32.const 7.615920121906725e+18))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    (i64.const -5033514)
    i64.eqz
    f64.convert_i32_s
    f32.demote_f64
    f32.abs
    f32.floor
    f32.ceil
    i32.reinterpret_f32
    local.get 0
    i32.reinterpret_f32
    i32.shr_s
    i32.extend8_s
    f64.convert_i32_s
    f64.trunc
    f64.neg
    i64.trunc_f64_u
    i64.ctz
    i64.popcnt
    i64.popcnt
    i64.eqz
    drop
    ;;INSPECT
    (f32.const -2.6419974810474984e-34)
    f32.neg
    i32.reinterpret_f32
    f32.convert_i32_s
    nop
    i32.trunc_f32_u
    nop
    f32.convert_i32_s
    local.tee 1
    global.set $global_2780467772
)

)