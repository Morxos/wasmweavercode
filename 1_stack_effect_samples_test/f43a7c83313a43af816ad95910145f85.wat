(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3562914179 f64 (f64.const -7.908247445578508e+18))
(func $run (export "run")
    (local f64 i64)
    (local $temp i32)
    local.get 0
    local.get 0
    i64.trunc_f64_u
    f64.convert_i64_u
    f64.sub
    f64.sqrt
    f64.sqrt
    i64.trunc_f64_u
    f64.convert_i64_s
    f64.trunc
    f64.abs
    f64.abs
    f64.trunc
    ;;INSPECT
    f32.demote_f64
    i32.reinterpret_f32
    f64.convert_i32_s
    f64.neg
    i64.trunc_f64_u
    local.tee 1
    i64.clz
    i64.eqz
    i64.extend_i32_s
    i64.eqz
    f32.reinterpret_i32
    i32.trunc_f32_s
    i32.popcnt
    f64.convert_i32_u
    i64.trunc_f64_u
    i64.extend32_s
    drop
    global.get $global_3562914179
    f64.abs
    f64.floor
    f64.floor
    f64.floor
    local.set 0
)

)