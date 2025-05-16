(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_436875182 (mut f32) (f32.const 6.256078775289643e+18))
(func $run (export "run")
    (local f64 f32)
    (local $temp i32)
    local.get 0
    (f32.const 0.04877299442887306)
    f32.ceil
    i64.trunc_f32_u
    ;;INSPECT
    i64.popcnt
    local.get 0
    f64.nearest
    i64.trunc_f64_s
    nop
    i64.extend32_s
    i64.extend32_s
    f32.convert_i64_u
    f32.abs
    i32.reinterpret_f32
    i32.clz
    i64.extend_i32_s
    i64.clz
    i64.shl
    f64.reinterpret_i64
    f64.sub
    i64.reinterpret_f64
    i64.extend16_s
    i64.extend32_s
    i64.extend32_s
    f64.convert_i64_s
    f64.floor
    f64.abs
    f64.abs
    f64.sqrt
    f64.abs
    f64.sqrt
    i64.reinterpret_f64
    i64.eqz
    f64.convert_i32_u
    global.get $global_436875182
    local.set 1
    drop
)

)