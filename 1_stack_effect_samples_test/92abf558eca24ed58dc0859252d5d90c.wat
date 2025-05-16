(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1981617580 (mut f64) (f64.const 3.634412268644815e+18))
(func $run (export "run")
    (local f64 i64 i32 f32)
    (local $temp i32)
    local.get 0
    f64.neg
    i64.reinterpret_f64
    f64.reinterpret_i64
    i64.reinterpret_f64
    i64.clz
    i64.extend32_s
    f64.convert_i64_s
    f64.sqrt
    f64.sqrt
    (f32.const 1.2368636565480071e-38)
    i64.trunc_f32_u
    ;;INSPECT
    i64.extend16_s
    local.tee 1
    global.get $global_1981617580
    f64.floor
    f64.floor
    global.set $global_1981617580
    i32.wrap_i64
    local.tee 2
    f32.convert_i32_u
    f32.trunc
    f32.trunc
    f32.sqrt
    i32.trunc_f32_u
    f32.reinterpret_i32
    local.set 3
    f64.sqrt
    drop
)

)