(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3844774172 f64 (f64.const -4.5181886564785623e+18))
(global $global_2638791242 (mut f64) (f64.const 4.62478581461171e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    (i32.const -49541)
    i32.eqz
    local.tee 0
    i64.extend_i32_s
    global.get $global_3844774172
    f64.abs
    f64.floor
    f64.floor
    f64.floor
    f64.floor
    f64.nearest
    i64.reinterpret_f64
    f64.convert_i64_u
    f64.nearest
    drop
    f64.reinterpret_i64
    ;;INSPECT
    i64.trunc_f64_u
    i64.extend32_s
    i64.ctz
    i64.eqz
    i64.extend_i32_s
    i64.extend32_s
    i64.popcnt
    i64.extend32_s
    nop
    i64.ctz
    i64.popcnt
    i64.eqz
    i32.clz
    f64.convert_i32_u
    f64.abs
    i32.trunc_f64_u
    i32.extend16_s
    f64.convert_i32_s
    nop
    i64.trunc_f64_s
    i64.extend32_s
    f64.reinterpret_i64
    global.set $global_2638791242
)

)