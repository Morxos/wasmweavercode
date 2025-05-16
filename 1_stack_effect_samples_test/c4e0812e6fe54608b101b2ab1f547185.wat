(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_371317083 f32 (f32.const -3.1436084722941297e+18))
(func $run (export "run")
    (local i64 i64 i32)
    (local $temp i32)
    local.get 0
    f64.convert_i64_u
    f64.sqrt
    f64.sqrt
    f64.trunc
    i64.reinterpret_f64
    i64.eqz
    i32.eqz
    global.get $global_371317083
    f32.neg
    f32.sqrt
    i32.trunc_f32_u
    i32.gt_u
    i32.ctz
    i32.extend8_s
    f64.convert_i32_s
    f64.floor
    f64.nearest
    i64.trunc_f64_u
    i64.eqz
    i32.ctz
    i32.extend16_s
    i32.extend8_s
    i32.ctz
    i32.extend16_s
    i32.clz
    f32.convert_i32_s
    f32.sqrt
    i64.trunc_f32_u
    local.tee 1
    i64.popcnt
    i64.extend32_s
    f32.convert_i64_u
    i32.trunc_f32_s
    ;;INSPECT
    i32.extend8_s
    i32.clz
    f32.convert_i32_s
    f32.ceil
    f32.ceil
    i32.reinterpret_f32
    local.tee 2
    nop
    i32.extend16_s
    f32.convert_i32_s
    drop
)

)